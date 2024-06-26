package com.kickboard.Kdash.config;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.kickboard.Kdash.config.auth.OAuth2DetailsService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@Configuration
@EnableWebSecurity
public class SecurityConfig{
	
	@Autowired
	OAuth2DetailsService oAuth2DetailsService;
	
	@Bean
	public BCryptPasswordEncoder encode() {
		return new BCryptPasswordEncoder();
	}
	
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
	    http
	    	.csrf(AbstractHttpConfigurer::disable)
	        .authorizeHttpRequests(authorizeRequests ->
	            authorizeRequests
	                .requestMatchers("/admin/**").hasRole("ADMIN")
	                .anyRequest().permitAll()
	        )
	        .formLogin(formLogin ->
            formLogin
                .loginPage("/login")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/")
                .failureUrl("/failed")
                .usernameParameter("email")
                .passwordParameter("password")
                .successHandler(new AuthenticationSuccessHandler() {
                    @Override
                    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                    		
                    		
//                    		System.out.println("로그인 성공");
//                            System.out.println("authentication" + authentication.getName());

                            response.sendRedirect("/");
                    }
                })
      
                
        )
	        .logout(logout -> logout
	                .logoutUrl("/logout") // 로그아웃 요청 URL 설정, 기본값은 "/logout"
	                .logoutSuccessUrl("/login") // 로그아웃 성공 시 이동할 URL
	                .invalidateHttpSession(true) // HTTP 세션 무효화 여부
	                .deleteCookies("JSESSIONID") // 로그아웃 시 삭제할 쿠키 설정, 여러 개일 경우 여러 번 호출
	                .permitAll()) // 로그아웃 페이지 접근 권한 설정
	        .oauth2Login(oAuth -> oAuth
	        		.loginPage("/login")
	        		.defaultSuccessUrl("/")
	        		.failureUrl("/failed")
	        		.failureHandler(new AuthenticationFailureHandler() {
						
						@Override
						public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
								AuthenticationException exception) throws IOException, ServletException {
							System.out.println(request.getParameter("username"));
							System.out.println(request.getParameter("userEmail"));
							System.out.println(request.getParameter("password"));
							System.out.println("exception: " + exception.getMessage() +" | "+ exception.toString());
						}
					})
	        		.userInfoEndpoint(userInfo -> userInfo.userService(oAuth2DetailsService))
	        		);
	    	
	        
	        
	    return http.build();
	}
	
}
