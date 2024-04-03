package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Getter
public class Following {
	 // 팔로잉 식별자 
    private int follow_idx;

    // 회원 아이디 
    private String mem_email;

    // 선수 식별자 
    private int player_idx;

    // 구단 식별자 
    private int club_idx;

    // 팔로우 날짜 
    private String followed_at;
}
