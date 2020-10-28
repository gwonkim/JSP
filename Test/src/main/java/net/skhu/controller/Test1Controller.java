package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Test1Controller {

	@GetMapping("mid/mid1")
	public String mid1(Model model) {
		model.addAttribute("number1", "0");
		return "mid/mid1";
	}

	@PostMapping("mid/mid1")
	public String mid1(Model model, Integer number1) {
		model.addAttribute("number1", number1);
		return "mid/mid1";
	}

	@GetMapping("mid/mid2")
	public String mid2(Model model) {
		model.addAttribute("radio1", "one");
		return "mid/mid2";
	}

	@PostMapping("mid/mid2")
	public String mid2(Model model, String radio1) {
		model.addAttribute("radio1", radio1);
		return "mid/mid2";
	}

	@GetMapping("mid/mid3")
	public String mid3(Model model) {
		model.addAttribute("text1", "one");
		return "mid/mid3";
	}

	@PostMapping("mid/mid3")
	public String mid3(Model model, String text1, String radio1) {
		text1 = radio1;
		model.addAttribute("text1", text1);
		return "mid/mid3";
	}

	@GetMapping("mid/mid4")
	public String mid4(Model model) {
		return "mid/mid4";
	}

	@PostMapping("mid/mid4")
	public String mid4(Model model, String sex, String name, String err ) {
		if (name == null || name.length() == 0)
			err = "이름을 입력하세요";
		else if (sex == null || sex.length() == 0)
			err = "성별을 입력하세요";
		model.addAttribute("sex", sex);
		model.addAttribute("name", name);
		model.addAttribute("err", err);
		return "mid/mid4";
	}

}