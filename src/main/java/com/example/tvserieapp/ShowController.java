package com.example.tvserieapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(path="/")
public class ShowController {
    @Autowired
    private showRepository showRepository;

    @PostMapping(path="/add")
    public @ResponseBody String addNewShow (@RequestParam String name, @RequestParam String premiered){

        Show n = new Show();
        n.setName(name);
        n.setPremiered(premiered);
        showRepository.save(n);
        return "Saved";
    }

    @GetMapping(path="/all")
    public @ResponseBody Iterable<Show> getAllShows(){
        return showRepository.findAll();
    }
}
