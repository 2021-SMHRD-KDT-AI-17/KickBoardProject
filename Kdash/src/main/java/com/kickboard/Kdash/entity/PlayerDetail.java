package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class PlayerDetail {
	// 세부정보 식별자 
    private int detail_idx;
    // 선수 식별자 
    private int player_idx;
    // 년도 
    private String year;
    // 리그 
    private String league;
    // 활동 구단 
    private String club;
    // 선수 출전수 
    private int appearance;
    // 클럽 득점 
    private int goal;
    // 도움 
    private int as;
    // 골킥 
    private int gk;
    // 코너킥 
    private int ck;
    // 파울 
    private int fo;
    // 아웃스윙어 
    private int os;
    // 슈팅 
    private int st;

    // 실점 
    private int loss;

    // 경고 
    private int caution;

    // 퇴장 
    private int ejection;
}
