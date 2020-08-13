package com.triplocator.affiliation.whitelabel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Anil Maharjan
 * @CreatedDate 2020-08-13
 */
@Controller
public class HomeController {
    @GetMapping("/")
    public String indexPage(){
        return "index";
    }
}
