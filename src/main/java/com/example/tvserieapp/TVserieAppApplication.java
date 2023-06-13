package com.example.tvserieapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

@SpringBootApplication
@RestController
public class TVserieAppApplication {
    /*
    public static void createNewTable(){
        String url = "jdbc:sqlite:C://tvserier.db";

        String sql = "CREATE TABLE IF NOT EXISTS tvserier (\n" +
                "id integer PRIMARY KEY AUTOINCREMENT,\n" +
                "url text,\n" +
                "name text,\n" +
                "type text,\n" +
                "language text,\n" +
                "genres text,\n" +
                "status text,\n" +
                "runtime text,\n" +
                "averageRuntime text,\n" +
                "premiered text,\n" +
                "ended text,\n" +
                "officialSite text,\n" +
                "schedule text,\n" +
                "rating text,\n" +
                "weight text,\n" +
                "network text,\n" +
                "country text,\n" +
                "webChannel text,\n" +
                "dvdCountry text,\n" +
                "externals text,\n" +
                "image text,\n" +
                "summary text,\n" +
                "updated text,\n" +
                "_links text,\n" +
                "previousepisode text\n" +
                ")";

        try (Connection conn = DriverManager.getConnection(url);
                Statement stmt = conn.createStatement()){
            stmt.execute("");
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }*/

    public static void main(String[] args) {
        SpringApplication.run(TVserieAppApplication.class, args);
    }

    @GetMapping("/hello")
    public String sayHello(@RequestParam(value = "myName", defaultValue = "World") String name) {
        return String.format("Hello %s!", name);
    }

    /*@Override
    public void run(String... args) throws Exception {
        jdbcTemplate.execute("CREATE TABLE IF NOT EXISTS tvserier(name VARCHAR(100))");

        jdbcTemplate.execute("INSERT INTO tvserier VALUES ('Breaking Bad')");

        List<Show> shows = jdbcTemplate.query("SELECT * FROM tvserier",
        (resultSet, rowNum) -> new Show(resultSet.getString("name")));
    }*/

}
