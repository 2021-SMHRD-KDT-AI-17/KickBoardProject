package com.kickboard.Kdash.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kickboard.Kdash.entity.News;
import com.kickboard.Kdash.entity.Request;
import com.kickboard.Kdash.service.NewsService;
import com.kickboard.Kdash.service.RequestService;

import jakarta.annotation.Resource;

@RestController
public class Rest_Controller {
	@Resource
	private NewsService newsService;
	@Resource
	private RequestService requestService;
	//---뉴스
	@GetMapping("/newsFirstList")
	public @ResponseBody List<News> firstList(){
		return newsService.newsList();
	}
	@GetMapping("/newsPreList")
	public @ResponseBody List<News> prenewsList(@RequestParam("range") int range){
		System.out.println(range+"pre");
		return newsService.prenewsList(range);
	}
	@GetMapping("/newsPostList")
	public @ResponseBody List<News> postnewsList(@RequestParam("range") int range){
		System.out.println(range+"post");
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
		System.out.println("controller"+keyword);
		return requestService.findreqList(keyword);
	}
	//---
}
