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
		System.out.println(range+"pre");
		return reqMapper.prereqList(range);
	}
	public List<Request> postreqList(int range) {
		System.out.println(range+"post");
		return reqMapper.postreqList(range);
	}
	public Request getInterview(int idx) {
		return reqMapper.getInterview(idx);
	}

}
