package com.kickboard.Kdash.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter
public class News {
    // 기사 식별자 
    private int article_idx;
    // 기사 검색어 
    private String article_query;
    // 기사 제목 
    private String article_title;
    // 기사 이미지 
    private String article_img;
    // 기사 링크 
    private String article_url;
}
