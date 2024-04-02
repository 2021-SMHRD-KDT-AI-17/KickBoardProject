package com.kickboard.Kdash.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.config.auth.CustomUserDetails;
import com.kickboard.Kdash.entity.SignupDto;

@Mapper
public interface AuthMapper {

	public String userEmailChk(String userEmail);

	public void signup(SignupDto signupDto);
	
	public CustomUserDetails getUser(String username);
	
	SignupDto userEmail(String email);
}
