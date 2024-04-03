package com.kickboard.Kdash.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kickboard.Kdash.entity.Goods;
import com.kickboard.Kdash.mapper.ShopMapper;



@Controller
public class ShopController {
	
	@Autowired
	private ShopMapper shopMapper;
	
	@GetMapping("/goodsDetails")
	public String shop(@RequestParam("idx") int idx, Model model) {
		Goods goodsinfo=shopMapper.goodsDetails(idx);
		model.addAttribute("goodsinfo",goodsinfo);
		return "shop_details";
	}
}
