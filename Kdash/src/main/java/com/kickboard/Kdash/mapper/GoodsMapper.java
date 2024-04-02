package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Goods;

@Mapper
public interface GoodsMapper {

	public List<Goods> goodsFirstList();
	public Goods Addcart(int idx);
}
