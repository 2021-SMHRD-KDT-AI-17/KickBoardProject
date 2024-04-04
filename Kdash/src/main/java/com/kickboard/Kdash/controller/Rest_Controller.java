package com.kickboard.Kdash.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kickboard.Kdash.entity.Club;
import com.kickboard.Kdash.entity.Goods;
import com.kickboard.Kdash.entity.News;
import com.kickboard.Kdash.entity.Player;
import com.kickboard.Kdash.entity.PlayerDetail;
import com.kickboard.Kdash.entity.Request;
import com.kickboard.Kdash.service.DashboardService;
import com.kickboard.Kdash.service.GoodsService;
import com.kickboard.Kdash.service.NewsService;
import com.kickboard.Kdash.service.RequestService;

import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpSession;

@RestController
public class Rest_Controller {
	@Resource
	private NewsService newsService;
	@Resource
	private RequestService requestService;
	@Resource
	private GoodsService goodsService;
	@Resource
	private DashboardService dashboardService;
	//---뉴스
	@GetMapping("/newsFirstList")
	public @ResponseBody List<News> firstList(){
		return newsService.newsList();
	}
	@GetMapping("/newsPreList")
	public @ResponseBody List<News> prenewsList(@RequestParam("range") int range){
		return newsService.prenewsList(range);
	}
	@GetMapping("/newsPostList")
	public @ResponseBody List<News> postnewsList(@RequestParam("range") int range){
		return newsService.postnewsList(range);
	}
	//---
	//---인터뷰요청
	@GetMapping("likesTop3")
	public @ResponseBody List<Request> likesTop3(){
		return requestService.likesTop3();
	}
	@GetMapping("reqFirstList")
	public @ResponseBody List<Request> reqFirstList(){
		return requestService.reqFirstList();
	}
	@GetMapping("/reqPreList")
	public @ResponseBody List<Request> prereqList(@RequestParam("range") int range){
		return requestService.prereqList(range);
	}
	@GetMapping("/reqPostList")
	public @ResponseBody List<Request> postreqList(@RequestParam("range") int range){
		return requestService.postreqList(range);
	}
	@GetMapping("/reqFind")
	public @ResponseBody List<Request> findreqList(@RequestParam("keyword") String keyword){
		return requestService.findreqList(keyword);
	}
	@GetMapping("/likesUpdate")
	public @ResponseBody boolean likesUpdate(@RequestParam("idx") int idx,@RequestParam("likes") int likes){
		return requestService.likesUpdate(idx,likes);
	}
	//---
	//---샵
	@GetMapping("/goodsFirstList")
	public @ResponseBody List<Goods> goodsFirstList(){
		return goodsService.goodsFirstList();
	}
	@GetMapping("/goodsAddcart")
	public @ResponseBody Goods goodsAddcart(@RequestParam("idx") int idx, HttpSession session) {
		List<Goods> cart= new ArrayList<>();
		if(session.getAttribute("cart")!=null) {
			cart=(List<Goods>)session.getAttribute("cart");
		}
		Goods item=goodsService.Addcart(idx);
		cart.add(item);
		session.setAttribute("cart", cart);
		System.out.println(cart.size());
		return item;
	}
	//---
	//---메인대시보드
	@GetMapping("/showClub")
	public @ResponseBody Club showClub(@RequestParam("clubname") String name){
		return dashboardService.showClub(name);
	}
	@GetMapping("/showPlayer")
	public @ResponseBody Player showPlayer(@RequestParam("playername")String name) {
		return dashboardService.showPlayer(name);
	}
	@GetMapping("/showPlayerDetail")
	public @ResponseBody PlayerDetail showPlayerDetail(@RequestParam("playeridx")int idx) {
		return dashboardService.showPlayerDetail(idx);
	}
}
