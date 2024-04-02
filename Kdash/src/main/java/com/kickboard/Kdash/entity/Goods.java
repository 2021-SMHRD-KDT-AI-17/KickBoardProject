package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class Goods {
	private int goods_idx;
	private String goods_name;
	private String goods_img;
	private int goods_price;
	private int goods_inventory;
	private String goods_manufacturer;
}
