package com.example.demo.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@Slf4j
@RestController
public class TestController {

    @GetMapping("time")
    public Date getTime(){
        System.out.println("console logs");
        log.info("testing  slf4j...!");

        return new Date();
    }

}
