package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Shop {
	private int goods_idx;
	private String goods_name;
	private int goods_inventory;
	private String goods_manufacturer;
	private int goods_price;
}
