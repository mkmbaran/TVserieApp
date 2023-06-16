package com.example.tvserieapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.sql.*;
import java.util.List;
import java.util.Properties;

@SpringBootApplication
@RestController
public class TVserieAppApplication {
    public static void main(String[] args) {
        SpringApplication.run(TVserieAppApplication.class, args);
        /*
        File file = new File("src/main/resources/tvserier.txt");
        try {
            FileInputStream innSerier = new FileInputStream(file);
            BufferedReader utSerier = new BufferedReader(new InputStreamReader(innSerier));
            String data;
            while ((data = utSerier.readLine()) != null){
                String[] shows = data.split("\\\\n"); // split each line from .txt file
                for (String show : shows){
                    System.out.println(show); // print each show in .txt file as test
                }
            }
        }catch (IOException e) {
            e.printStackTrace();
        }*/
    }

}
