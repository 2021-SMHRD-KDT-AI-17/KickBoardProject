package com.kickboard.Kdash.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.Player;
import com.kickboard.Kdash.entity.PlayerDetail;

@Mapper
public interface PlayerMapper {
	public Player showPlayer(String name);
	public PlayerDetail showPlayerDetail(int idx);
}
