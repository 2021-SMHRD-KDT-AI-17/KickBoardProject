package com.kickboard.Kdash.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QuizMapper {

	public String quiz_ans(String result);

}
