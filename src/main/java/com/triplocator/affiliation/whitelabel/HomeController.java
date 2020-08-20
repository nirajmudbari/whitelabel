package com.triplocator.affiliation.whitelabel;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Anil Maharjan
 * @CreatedDate 2020-08-13
 */
@Controller
public class HomeController {
    @GetMapping("/")
    public String indexPage() {
        return "index";
    }
//
//    @GetMapping("/result")
//    public String widgetBuilderPage(Model model) {
//        model.addAttribute("widgetId", "TL-XXXXXXXX-test");
//        return "result";
//    }


    @GetMapping("/result")
    public String resultPage() {
        return "result";
    }

}
