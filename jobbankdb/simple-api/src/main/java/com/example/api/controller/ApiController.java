package com.example.api.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/tables")
    public List<String> getAllTables() {
        String sql = "SELECT table_name FROM all_tables WHERE owner = upper(?)";
        return jdbcTemplate.queryForList(
            sql,
            String.class,
            System.getProperty("user.name").toUpperCase()
        );
    }

    @GetMapping("/table/{tableName}")
    public List<Map<String, Object>> getAllFromTable(
        @PathVariable String tableName
    ) {
        String sql = "SELECT * FROM " + tableName;
        return jdbcTemplate.queryForList(sql);
    }
}
