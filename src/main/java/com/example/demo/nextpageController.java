package com.example.demo;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class nextpageController {
    @GetMapping(value="/nextpage")
    public String moveToNextPage(Model model) {
        System.out.println("next Page!");
        model.addAttribute("number", 1234);
        return "/nextpage";
    }

}
