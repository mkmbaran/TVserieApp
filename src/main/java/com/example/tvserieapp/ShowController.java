package com.example.tvserieapp;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.io.JsonEOFException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import netscape.javascript.JSObject;
import org.apache.tomcat.util.json.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Scanner;

@RestController
@RequestMapping(path="/")
public class ShowController {
    @Autowired
    private showRepository showRepository;

    String[] shows = new String[60];
    URL url;

    /*public void lesConfigFil(){
        File file = new File("src/main/resources/tvserier.txt");
        try {
            FileInputStream innSerier = new FileInputStream(file);
            BufferedReader utSerier = new BufferedReader(new InputStreamReader(innSerier));
            String data;
            while ((data = utSerier.readLine()) != null){
                shows = data.split("\\\\n"); // split each line from .txt file
                for (String show : shows){
                    System.out.println(show); // print each show in .txt file as test
                }
            }
        }catch (IOException e) {
            e.printStackTrace();
        }
    }*/

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

                }
            }
            try {
                String str = "https://api.tvmaze.com/singlesearch/shows?q=" + shows[0];
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
                        System.out.println("Found show: " + funnetShow.getName() + " from: " + funnetShow.getOfficialSite());
                        showRepository.save(funnetShow);
                    }catch (IOException e){
                        e.printStackTrace();
                    }

                }

            } catch (IOException e) {
                e.printStackTrace();
            }

        } catch (IOException e){
            e.printStackTrace();
        }

    }

    @PostMapping(path="/add")
    public @ResponseBody String addNewShow (@RequestParam String name, @RequestParam String premiered){

        Show n = new Show();
        n.setName(name);
        n.setPremiered(premiered);
        showRepository.save(n);
        return "Saved";
    }

    @GetMapping(path="/shows")
    public @ResponseBody Iterable<Show> getAllShows(){
        return showRepository.findAll();
    }

    /*
    @GetMapping(path="/shows/{id}")
    public @ResponseBody Show getShowById(@PathVariable Integer id){
        return showRepository.findById(id);
    }*/

    @GetMapping("/greeting")
    public String helloWorld(@RequestParam(value = "myName", defaultValue = "World") String name) {
        return String.format("Hello %s!", name);
    }
}
