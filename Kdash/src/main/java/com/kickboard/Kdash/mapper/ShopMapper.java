package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Goods;

@Mapper
public interface ShopMapper {
	public Goods goodsDetails(int idx);
}
