package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Gugudan1Controller {
	@GetMapping("form/gugudan")
	public String gugudan(Model model) {
		model.addAttribute("number1", "1");
		return "form/gugudan";
	}

	@PostMapping("form/gugudan")
	public String gugudan(Model model, Integer number1) {
		model.addAttribute("number1", number1);
		return "form/gugudan";
	}
}
