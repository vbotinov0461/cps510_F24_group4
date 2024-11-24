package com.example.api.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class ApiController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    //get all the tables
    @GetMapping("/tables")
    public List<String> getAllTables() {
        String sql = "SELECT TABLE_NAME FROM USER_TABLES ORDER BY TABLE_NAME";
        return jdbcTemplate.queryForList(
            sql,
            String.class,
            System.getProperty("user.name").toUpperCase()
        );
    }

    //display all entrys in a givin table
    @GetMapping("/table/view/{tableName}")
    public List<Map<String, Object>> getAllFromTable(
        @PathVariable String tableName
    ) {
        String sql = "SELECT * FROM " + tableName;
        return jdbcTemplate.queryForList(sql);
    }

    //deleat a table
    @DeleteMapping("/table/delete/{tableName}")
    public ResponseEntity<String> deleteTable(@PathVariable String tableName) {
        try {
            String sql = "DROP TABLE " + tableName;
            jdbcTemplate.execute(sql);
            return ResponseEntity.ok(
                "Table " + tableName + " deleted successfully"
            );
        } catch (Exception e) {
            return ResponseEntity.badRequest()
                .body("Error deleting table: " + e.getMessage());
        }
    }

    //Enter an row into an table
    @PostMapping("/table/{tableName}/row")
    public ResponseEntity<String> addRow(
        @PathVariable String tableName,
        @RequestBody Map<String, Object> rowData
    ) {
        try {
            // Build the column names and values parts of the SQL
            StringBuilder columns = new StringBuilder();
            StringBuilder values = new StringBuilder();
            List<Object> params = new ArrayList<>();

            for (Map.Entry<String, Object> entry : rowData.entrySet()) {
                if (columns.length() > 0) {
                    columns.append(", ");
                    values.append(", ");
                }
                columns.append(entry.getKey());
                values.append("?");
                params.add(entry.getValue());
            }

            String sql = String.format(
                "INSERT INTO %s (%s) VALUES (%s)",
                tableName,
                columns.toString(),
                values.toString()
            );

            jdbcTemplate.update(sql, params.toArray());
            return ResponseEntity.ok("Row added successfully");
        } catch (Exception e) {
            return ResponseEntity.badRequest()
                .body("Error adding row: " + e.getMessage());
        }
    }
}
