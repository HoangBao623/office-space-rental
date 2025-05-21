package com.javaweb.osr.service.Login_Signup;

import com.javaweb.osr.entity.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;

public class CustomUserDetailsService implements UserDetails {

    private final User user;

    public CustomUserDetailsService(User user) {
        this.user = user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        String rolePrefix = "ROLE_";
        String roleName = String.valueOf(user.getRoleID().getRoleID());

        switch (roleName) {
            case "1":
                roleName = "MANAGER";
                break;
            case "2":
                roleName = "SALES";
                break;
            case "3":
                roleName = "CUSTOMER";
                break;
            default:
                throw new IllegalArgumentException("Invalid role ID: " + roleName);
        }

        return Collections.singletonList(new SimpleGrantedAuthority(rolePrefix + roleName));
    }


    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
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
