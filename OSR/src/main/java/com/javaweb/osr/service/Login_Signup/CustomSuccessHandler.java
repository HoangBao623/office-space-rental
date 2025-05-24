package com.javaweb.osr.service.Login_Signup;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.oauth2.core.oidc.user.DefaultOidcUser;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Collection;

@Component
public class CustomSuccessHandler implements AuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        Object principal = authentication.getPrincipal();
        Collection<? extends GrantedAuthority> authorities;

        if (principal instanceof CustomUserDetailsService) {
            // Người dùng đăng nhập bằng username/password
            CustomUserDetailsService userDetails = (CustomUserDetailsService) principal;
            authorities = userDetails.getAuthorities();
            String redirectUrl = "/";
            if (authorities.stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_MANAGER"))) {
                redirectUrl = "/admin/";
            } else if (authorities.stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_SALES"))) {
                redirectUrl = "/sales/";
            } else if (authorities.stream().anyMatch(auth -> auth.getAuthority().equals("ROLE_CUSTOMER"))) {
                redirectUrl = "/";
            }
            response.sendRedirect(redirectUrl);
        } else if (principal instanceof DefaultOidcUser) {
            // Người dùng đăng nhập bằng OAuth2 (Google)
            DefaultOidcUser oidcUser = (DefaultOidcUser) principal;
            authorities = oidcUser.getAuthorities();
            response.sendRedirect("/");
        } else {
            // Không xác định
            response.sendRedirect("/error");
        }
    }
}