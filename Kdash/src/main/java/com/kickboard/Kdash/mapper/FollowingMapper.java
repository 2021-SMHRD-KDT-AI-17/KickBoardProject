package com.kickboard.Kdash.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Players;

@Mapper
public interface FollowingMapper {

	public List<Players> playerList();
	
}
