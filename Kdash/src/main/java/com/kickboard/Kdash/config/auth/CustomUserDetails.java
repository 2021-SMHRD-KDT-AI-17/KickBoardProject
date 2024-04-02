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
