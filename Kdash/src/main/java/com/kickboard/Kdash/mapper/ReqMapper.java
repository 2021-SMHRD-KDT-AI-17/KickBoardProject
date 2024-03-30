package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Request;

@Mapper
public interface ReqMapper {
	public List<Request> likesTop3();
	public List<Request> reqFirstList();
	public List<Request> prereqList(int range);
	public List<Request> postreqList(int range);

	public Request getInterview(int idx);
}
