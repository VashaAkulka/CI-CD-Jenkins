package ru.sermyazhko.CI.CDJenkins.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @GetMapping
    public ResponseEntity<String> sayHello(@RequestParam(value = "name", required = false) String name) {
        if (name != null) return ResponseEntity.ok("Hello " + name);
        return ResponseEntity.ok("Hello");
    }
}
