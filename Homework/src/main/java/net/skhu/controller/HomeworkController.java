package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeworkController {

    @GetMapping("homework/test1")
    public String test1(Model model) {
        model.addAttribute("number1", 0);
        return "homework/test1";
    }

    @PostMapping("homework/test1")
    public String test1(Model model, Integer number1) {
        number1 += 1;
        model.addAttribute("number1", number1);
        return "homework/test1";
    }

    @GetMapping("homework/test2")
    public String test2(Model model) {
        model.addAttribute("text1", "one");
        return "homework/test2";
    }

    @PostMapping("homework/test2")
    public String test2(Model model, String text1) {
        model.addAttribute("text1", text1);
        return "homework/test2";
    }

}
