package com.kickboard.Kdash.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.Club;
import com.kickboard.Kdash.entity.Player;
import com.kickboard.Kdash.entity.PlayerDetail;
import com.kickboard.Kdash.mapper.ClubMapper;
import com.kickboard.Kdash.mapper.PlayerMapper;

@Service
public class DashboardService {
	@Autowired
	private PlayerMapper playerMapper;
	@Autowired
	private ClubMapper clubMapper;
	public Club showClub(String name) {
		return clubMapper.showClub(name);
	}
	public Player showPlayer(String name) {
		return playerMapper.showPlayer(name);
	}
	public PlayerDetail showPlayerDetail(int idx) {
		return playerMapper.showPlayerDetail(idx);
	}
}
