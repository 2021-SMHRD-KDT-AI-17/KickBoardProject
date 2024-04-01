package com.kickboard.Kdash.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kickboard.Kdash.entity.Shop;
import com.kickboard.Kdash.mapper.ShopMapper;

@Controller
public class ShopController {
	
	@Autowired
	private ShopMapper shopMapper;
	
	@GetMapping("/shop")
	public String shop(Model model) {
		List<Shop> shop_list = shopMapper.shop_list();
		model.addAttribute("shop_list",shop_list);
		return "shop";
	}
}
