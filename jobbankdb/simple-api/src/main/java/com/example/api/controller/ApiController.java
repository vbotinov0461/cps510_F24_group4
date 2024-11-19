package com.example.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/function1")
    public String function1(@RequestParam String param) {
        return jdbcTemplate.queryForObject(
            "SELECT column_name FROM your_table WHERE condition = ?",
            String.class,
            param
        );
    }

    @PostMapping("/function2")
    public void function2(@RequestBody String data) {
        jdbcTemplate.update(
            "INSERT INTO your_table (column_name) VALUES (?)",
            data
        );
    }

    @DeleteMapping("/function3/{id}")
    public void function3(@PathVariable Long id) {
        jdbcTemplate.update("DELETE FROM your_table WHERE id = ?", id);
    }
}
