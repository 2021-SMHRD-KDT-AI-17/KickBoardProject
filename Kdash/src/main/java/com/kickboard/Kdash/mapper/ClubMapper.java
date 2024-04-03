package com.kickboard.Kdash.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Club;

@Mapper
public interface ClubMapper {

	public Club showClub(String name);

}
