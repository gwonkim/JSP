package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.BookMapper;

@Controller
public class BookController {
	@Autowired BookMapper BookMapper;
	@RequestMapping("book/list")
	public String list(Model model) {
		model.addAttribute("books", BookMapper.findAll());
		return "book/list";
	}

	@RequestMapping("book/search")
	public String search(Model model, String srchText) {
		if (srchText == null) srchText = "";
		model.addAttribute("books", BookMapper.findByName(srchText + "%"));
		model.addAttribute("srchText", srchText);
		return "book/search";
	}

	@RequestMapping("book/detail")
	public String detail(Model model, Integer id) {
		if (id == null) id = 4;
		model.addAttribute("book", BookMapper.findById(id));
		return "book/detail";
	}
}
