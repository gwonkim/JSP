package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.CityMapper;

@Controller
public class CityController {
	@Autowired CityMapper CityMapper;

	@RequestMapping("city/list")
	public String list(Model model) {
		model.addAttribute("cities", CityMapper.findAll());
		return "city/list";
	}

	@RequestMapping("city/search")
	public String search(Model model, String srchText) {
		if (srchText == null) srchText = "";
		model.addAttribute("cities", CityMapper.findByName(srchText + "%"));
		model.addAttribute("srchText", srchText);
		return "city/search";
	}

	@RequestMapping("city/detail")
	public String detail(Model model, Integer id) {
		if (id == null) id = 4;
		model.addAttribute("city", CityMapper.findById(id));
		return "city/detail";
	}
}