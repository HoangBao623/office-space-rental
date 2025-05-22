package com.javaweb.osr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/lessor")
public class LessorController {

    @GetMapping("/")
    public String lessorIndex() {
        return "indexLessor";
    }
}
