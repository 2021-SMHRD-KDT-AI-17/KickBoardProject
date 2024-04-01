package com.kickboard.Kdash.service;

import java.lang.reflect.Member;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import com.kickboard.Kdash.entity.SignupDto;
import com.kickboard.Kdash.mapper.AuthMapper;

@Service
public class AuthService {

	@Autowired
	AuthMapper authMapper;
	
	@Transactional
	public Map<String, String> validHandling(Errors errors) {
		Map<String, String> validResult = new HashMap<>();
		for(FieldError error : errors.getFieldErrors()) {
			String validKeyName = String.format("valid_%s", error.getField());
			validResult.put(validKeyName, error.getDefaultMessage());
		}
		return validResult;
	}
	
	
	//이메일 중복확인
	@Transactional
	public String userEmailChk(String userEmail) {
		
		return authMapper.userEmailChk(userEmail);
		
	}
	
	//회원가입
	public void signup(SignupDto signupDto) {
		authMapper.signup(signupDto);
	}
	
//	public String loginSelect(Member member) {
//		
//	}
}
