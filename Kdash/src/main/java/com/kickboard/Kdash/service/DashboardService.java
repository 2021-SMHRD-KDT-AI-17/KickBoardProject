package com.kickboard.Kdash.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.Club;
import com.kickboard.Kdash.mapper.ClubMapper;
import com.kickboard.Kdash.mapper.PlayerMapper;

@Service
public class DashboardService {
	@Autowired
	private ClubMapper clubMapper;
	@Autowired
	private PlayerMapper playerMapper;
	public Club showClub(String name) {
		return clubMapper.showClub(name);
	}
}
