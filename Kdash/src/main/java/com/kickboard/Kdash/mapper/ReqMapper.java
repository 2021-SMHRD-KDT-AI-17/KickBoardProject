package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Request;

@Mapper
public interface ReqMapper {

	public List<Request> reqFirstList();

}
