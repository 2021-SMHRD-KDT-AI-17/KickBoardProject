package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.News;

@Mapper
public interface NewsMapper {
	public List<News> newsList();
	public List<News> prenewsList(int range);
	public List<News> postnewsList(int range);
}
