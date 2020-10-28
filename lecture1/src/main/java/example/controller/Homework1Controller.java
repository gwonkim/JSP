package example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Homework1Controller {
    @GetMapping("homework/test1")
    public String check1(Model model) {
        return "homework/test1";
    }

    @PostMapping("homework/test1")
    public String check1(Model model, Boolean checkbox1, String radio1, String radio2) {
        model.addAttribute("checkbox1", checkbox1);
        model.addAttribute("radio1", radio1);
        model.addAttribute("radio2", radio2);
        return "homework/test1";
    }

}
