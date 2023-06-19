package com.example.tvserieapp;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@RestController
@RequestMapping(path="/")
public class ShowController {
    @Autowired
    private showRepository showRepository;

    String[] shows = new String[60];
    URL url;

    @GetMapping(path="/addShows")
    public void lesFilOgHentFraAPI(){

        File file = new File("src/main/resources/tvserier.txt");
        try {
            //lesConfigFil();
            FileInputStream innSerier = new FileInputStream(file);
            BufferedReader utSerier = new BufferedReader(new InputStreamReader(innSerier));
            String data;
            while ((data = utSerier.readLine()) != null) {
                shows = data.split("\\\\n"); // split each line from .txt file
                for (String show : shows) {
                    System.out.println(show); // print each show in .txt file as test
                    try {
                        String str = "https://api.tvmaze.com/singlesearch/shows?q=" + show;
                        url = new URL(str);

                        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                        conn.setRequestMethod("GET");
                        conn.connect();

                        //get response code
                        int responsecode = conn.getResponseCode();

                        if (responsecode != 200) {
                            throw new RuntimeException("HttpResponseCode: " + responsecode);
                        } else {

                            ObjectMapper mapper = new ObjectMapper()
                                    .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false)
                                    .configure(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true)
                                    .configure(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT, true);
                            mapper.enable(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
                            mapper.setSerializationInclusion(JsonInclude.Include.USE_DEFAULTS);
                            try {
                                Show funnetShow = mapper.readValue(url, Show.class);
                                System.out.println("Retrieved show: " + funnetShow.getName() + " from: " + funnetShow.getOfficialSite());

                                showRepository.save(funnetShow);
                                System.out.println("Succesfully saved show " + funnetShow.getName() + " to db");
                                System.out.println("Waiting a little bit to avoid getting API rate limited...");
                                Thread.sleep(4000); // Important! API will rate-limit otherwise or drop connection entirely
                            }catch (IOException e){
                                e.printStackTrace();
                            } catch (InterruptedException e) {
                                throw new RuntimeException(e);
                            }

                        }

                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                System.out.println("Operation complete! If successful, database tables should now be filled!");
            }
            /*try {
                String str = "https://api.tvmaze.com/singlesearch/shows?q=gotham";
                url = new URL(str);

                HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                conn.setRequestMethod("GET");
                conn.connect();

                //get response code
                int responsecode = conn.getResponseCode();

                if (responsecode != 200) {
                    throw new RuntimeException("HttpResponseCode: " + responsecode);
                } else {

                    ObjectMapper mapper = new ObjectMapper()
                            .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false)
                            .configure(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true)
                            .configure(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT, true);
                    mapper.enable(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
                    mapper.setSerializationInclusion(JsonInclude.Include.USE_DEFAULTS);
                    try {
                        Show funnetShow = mapper.readValue(url, Show.class);
                        System.out.println("Found show: " + funnetShow.getName() + " from: " + funnetShow.getUrl() + "" +
                                " language: " + funnetShow.getLanguage() + " genres: " + funnetShow.getGenres());

                        try{
                            showRepository.save(funnetShow);
                            /*
                            session = sessionFactory.openSession();
                            session.beginTransaction();
                            session.save(nyShow);

                            session.getTransaction().commit();
                            session.close();



                        }catch(Exception e){
                            e.printStackTrace();
                        }
                    }catch (IOException e){
                        e.printStackTrace();
                    }

                }

            } catch (IOException e) {
                e.printStackTrace();
            }*/

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @GetMapping(path="/shows")
    public @ResponseBody Iterable<Show> getAllShows(){
        return showRepository.findAll();
    }

}
