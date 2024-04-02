package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@ToString
public class Request {
    // 질문글 식별자 
    private int req_idx;
    // 회원 이메일 
    private String mem_email;
    // 선수 식별자 
    private int player_idx;
    // 구단 식별자 
    private int club_idx;
    // 질문 제목 
    private String req_title;
    // 질문 내용 
    private String req_content;
    // 좋아요 수 
    private Integer req_likes;
    // 작성 일자 
    private String req_at;
}
