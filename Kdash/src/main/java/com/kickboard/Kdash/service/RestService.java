package com.kickboard.Kdash.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.News;
import com.kickboard.Kdash.entity.Request;
import com.kickboard.Kdash.mapper.NewsMapper;
import com.kickboard.Kdash.mapper.ReqMapper;

@Service
public class RestService {
	@Autowired
	private NewsMapper newsMapper;
	@Autowired
	private ReqMapper reqMapper;
	public List<News> newsFirstList() {
		return newsMapper.newsFirstList();
	}
	public List<News> prenewsList(int range) {
		return newsMapper.newsPreList(range);
	}
	public List<News> postnewsList(int range) {
		return newsMapper.newsPostList(range);
	}
	public List<Request> reqFirstList() {
		return reqMapper.reqFirstList();
	}
	

}
