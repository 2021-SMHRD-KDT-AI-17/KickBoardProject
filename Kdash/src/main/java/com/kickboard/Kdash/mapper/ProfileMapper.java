package com.kickboard.Kdash.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kickboard.Kdash.entity.SignupDto;

@Mapper
public interface ProfileMapper {

	public void profile_update(String user);

}
