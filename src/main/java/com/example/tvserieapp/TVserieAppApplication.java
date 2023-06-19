package com.example.tvserieapp;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;


@SpringBootApplication
@RestController
public class TVserieAppApplication {
    public static void main(String[] args) {
        SpringApplication.run(TVserieAppApplication.class, args);

    }

}
