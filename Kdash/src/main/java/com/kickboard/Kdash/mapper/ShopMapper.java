package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Shop;

@Mapper
public interface ShopMapper {
	public List<Shop> shop_list();
}
