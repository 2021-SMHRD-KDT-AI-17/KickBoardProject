package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Getter
public class Players {

	// 선수 식별자 
    private int player_idx;

    // 선수 이름 
    private String player_name;

    // 선수 등번호 
    private int player_uniform_number;

    // 선수 생년월일 
    private String player_birthdate;

    // 선수 신장 
    private double player_height;

    // 선수 몸무게 
    private double player_weight;

    // 클럽 식별자 
    private int club_idx;

   
}
