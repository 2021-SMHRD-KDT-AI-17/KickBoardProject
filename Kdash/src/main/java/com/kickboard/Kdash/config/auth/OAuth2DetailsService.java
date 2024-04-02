package com.kickboard.Kdash.config.auth;

import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.kickboard.Kdash.entity.SignupDto;
import com.kickboard.Kdash.mapper.AuthMapper;

@Service
public class OAuth2DetailsService extends DefaultOAuth2UserService {

	@Autowired
	AuthMapper authMapper;

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {

		OAuth2User oauth2User = super.loadUser(userRequest);
		String provider = userRequest.getClientRegistration().getRegistrationId();
		Map<String, Object> userInfo = oauth2User.getAttributes();

		System.out.println("Provider: " + provider);
		System.out.println("User Info: " + userInfo);

		String username = "";
		String password = new BCryptPasswordEncoder().encode(UUID.randomUUID().toString());
		String email = "";

		switch (provider) {
		case "kakao":
			Map<String, Object> kakaoAccount = oauth2User.getAttribute("kakao_account");
			username = "kakao_" + userInfo.get("id");
			email = (String) kakaoAccount.get("email");
			break;

		default:
			break;
		}

		if (authMapper.userEmailChk(username) == null) {
			SignupDto signupDto = new SignupDto();
			signupDto.setEmail(email);
			signupDto.setPassword(password);
			signupDto.setNickname(username);
			authMapper.signup(signupDto);
		}

		CustomUserDetails principal = authMapper.getUser(username);

		return principal;

	}
}
