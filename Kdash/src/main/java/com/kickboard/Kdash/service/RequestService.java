package com.kickboard.Kdash.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.Request;
import com.kickboard.Kdash.mapper.ReqMapper;

@Service
public class RequestService {
	@Autowired
	private ReqMapper reqMapper;
	public List<Request> likesTop3() {
		return reqMapper.likesTop3();
	}
	public List<Request> reqFirstList() {
		return reqMapper.reqFirstList();
	}
	public List<Request> prereqList(int range) {
		return reqMapper.prereqList(range);
	}
	public List<Request> postreqList(int range) {
		return reqMapper.postreqList(range);
	}
	public List<Request> findreqList(String keyword) {
		return reqMapper.findreqList(keyword);
	}
	public Request getInterview(int idx) {
		return reqMapper.getInterview(idx);
	}
	public boolean likesUpdate(int idx, int likes) {
		byte cnt=(byte)reqMapper.likesUpdate(idx,likes);
		return cnt>0?true:false;
	}
	public String getPlayerName(int idx) {
		return reqMapper.getPlayerName(idx);
	}
	public String getClubName(int idx) {
		return reqMapper.getClubName(idx);
	}

}
