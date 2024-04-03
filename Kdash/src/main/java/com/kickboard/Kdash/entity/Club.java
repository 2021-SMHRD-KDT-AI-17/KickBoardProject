package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class Club {
    // 구단 식별자 
    private int club_idx;
    // 구단 이름 
    private String club_name;
    // 구단 순위 
    private short club_ranking;
    // 구단 경기수 
    private Integer club_round;
    // 구단 승점 
    private Integer club_points;
    // 구단 승리횟수 
    private Integer club_win;
    // 구단 비긴횟수 
    private Integer club_draw;
    // 구단 진횟수 
    private Integer club_defeat;
    // 구단 득점 
    private Integer club_gain;
    // 구단 실점 
    private Integer club_loss;

    // 구단 득실 
    private Integer club_aggregate;
}
