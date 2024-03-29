package com.kickboard.Kdash.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kickboard.Kdash.service.RestService;
import com.kickboard.Kdash.entity.News;
import com.kickboard.Kdash.entity.Request;

import jakarta.annotation.Resource;



@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Resource
	private RestService restService;
	@GetMapping("/newsFirstList")
	public @ResponseBody List<News> newsFirstList(){
		return restService.newsFirstList();
	}
	@GetMapping("/newsPreList")
	public  @ResponseBody List<News> newsPreList(@RequestParam("range") int range){
		return restService.prenewsList(range);
	}
	@GetMapping("/newsPostList")
	public @ResponseBody List<News> newsPostList(@RequestParam("range") int range){
		return restService.postnewsList(range);
	}
	@GetMapping("/reqFirstList")
	public @ResponseBody List<Request>reqFirstList(){
		return restService.reqFirstList();
	}
}
