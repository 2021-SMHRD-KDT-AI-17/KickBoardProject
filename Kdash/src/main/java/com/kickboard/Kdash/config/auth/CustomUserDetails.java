package com.kickboard.Kdash.config.auth;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Data
public class CustomUserDetails implements UserDetails {

    private String role;
    private String mem_email;
    private String mem_pw;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
    	// DB에 ROLE_ 항목을 만들어서 default로 user을 넣어주고 admin 계정을 만들어야 admin과 user를 나눌 수 있음
//		return Collections.singletonList(new SimpleGrantedAuthority(this.role));
		return Collections.singletonList(new SimpleGrantedAuthority("ROLE_USER"));
	}

    @Override
    public String getUsername() {
    	return this.mem_email;
    }
    
    @Override
    public String getPassword() {
        return this.mem_pw;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
