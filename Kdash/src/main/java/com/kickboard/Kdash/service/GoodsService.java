package com.kickboard.Kdash.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.Goods;
import com.kickboard.Kdash.mapper.GoodsMapper;

@Service
public class GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;

	public List<Goods> goodsFirstList() {
		return goodsMapper.goodsFirstList();
	}
}
