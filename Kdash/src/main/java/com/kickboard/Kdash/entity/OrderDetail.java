package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class OrderDetail {
    // 상세 식별자 
    private int order_detail_idx;
    // 주문 식별자 
    private int order_idx;
    // 굿즈 식별자 
    private int goods_idx;
    // 주문 수량 
    private int order_cnt;
    // 주문 금액 
    private int order_price;
}
