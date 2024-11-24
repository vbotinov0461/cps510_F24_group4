package com.example.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.jdbc.core.JdbcTemplate;

@SpringBootApplication
public class Application {

    @Value("${spring.datasource.url}")
    private String url;

    @Value("${spring.datasource.username}")
    private String username;

    @Value("${spring.datasource.password}")
    private String password;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @EventListener(ApplicationReadyEvent.class)
    public void testDatabaseConnection() {
        System.out.println("Database URL: " + url);
        System.out.println("Database Username: " + username);
        System.out.println(
            "Database Password length: " +
            (password != null ? password.length() : "null")
        );

        try {
            String result = jdbcTemplate.queryForObject(
                "SELECT 1 FROM DUAL",
                String.class
            );
            System.out.println("✅ Database Connection Successful!");
            System.out.println(
                "🔌 Connected to: oracle.scs.ryerson.ca:1521:orcl"
            );
        } catch (Exception e) {
            System.out.println("❌ Database Connection Failed!");
            System.out.println("Error: " + e.getMessage());
        }
    }
}
