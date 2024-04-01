package com.kickboard.Kdash.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.News;
import com.kickboard.Kdash.mapper.NewsMapper;

@Service
public class NewsService {
	@Autowired
	private NewsMapper newsMapper;
	public List<News> newsList() {
		return newsMapper.newsList();
	}
	public List<News> prenewsList(int range) {
		return newsMapper.prenewsList(range);
	}
	public List<News> postnewsList(int range) {
		return newsMapper.postnewsList(range);
	}
}
