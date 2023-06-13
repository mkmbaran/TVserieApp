package com.example.tvserieapp;

import org.springframework.data.repository.CrudRepository;

import com.example.tvserieapp.Show;

public interface showRepository extends CrudRepository<Show, Integer> {
}
