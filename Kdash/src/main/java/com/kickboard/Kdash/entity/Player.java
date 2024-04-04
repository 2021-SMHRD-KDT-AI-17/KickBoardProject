package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class Player {
    // 선수 식별자 
    private int player_idx;
    // 선수 이름 
    private String player_name;
    // 구단 식별자 
    private int club_idx;
    // 선수 등번호 
    private Integer player_uniform_number;
    // 선수 포지션 
    private String player_position;
    // 선수 몸무게 
    private float player_weight;
    // 선수 신장 
    private float player_height;
    // 선수 생년월일 
    private String player_birthdate;
    // 선수 사진링크
    private String player_imgurl;
}
