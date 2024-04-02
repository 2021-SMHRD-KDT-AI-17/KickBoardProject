package com.kickboard.Kdash.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import com.kickboard.Kdash.entity.SignupDto;
import com.kickboard.Kdash.mapper.AuthMapper;

@Service
public class AuthService {
	
	 @Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	AuthMapper authMapper;

	@Transactional
	public Map<String, String> validHandling(Errors errors) {
		Map<String, String> validResult = new HashMap<>();
		for (FieldError error : errors.getFieldErrors()) {
			String validKeyName = String.format("valid_%s", error.getField());
			validResult.put(validKeyName, error.getDefaultMessage());
		}
		return validResult;
	}

	// 이메일 중복확인
	@Transactional
	public String userEmailChk(String userEmail) {

		return authMapper.userEmailChk(userEmail);

	}

	// 회원가입
	@Transactional
	public void signup(SignupDto signupDto) {
		
		String encPassword = bCryptPasswordEncoder.encode(signupDto.getPassword());
		signupDto.setPassword(encPassword);
		
		authMapper.signup(signupDto);
	}
	
	// 로그인 이메일, 비밀번호 체크.??
	public String emailCheck(String email, String password) {
		SignupDto emailChk = authMapper.userEmail(email);
		
		System.out.println("[AuthService]:"+emailChk+" | "+emailChk.getPassword());
		
		if(emailChk.getPassword().equals(password))
			
			return emailChk.getEmail();
		return null;
	}

}
