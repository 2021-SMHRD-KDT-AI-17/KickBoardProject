package com.kickboard.Kdash.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kickboard.Kdash.entity.Goods;
import com.kickboard.Kdash.mapper.GoodsMapper;


@Controller
public class ShopController {
	
	@Autowired
	private GoodsMapper goodsMapper;
	
	@GetMapping("/shopDetails")
	public String shop() {
		return "shop_details";
	}
}
