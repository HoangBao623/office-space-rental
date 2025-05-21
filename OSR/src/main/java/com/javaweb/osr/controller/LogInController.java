package com.javaweb.osr.controller;

import com.javaweb.osr.entity.User;
import com.javaweb.osr.repository.systemInterface.UserRepository;
import com.javaweb.osr.service.Login_Signup.CustomOAuth2UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Optional;

@Controller
public class LogInController { //UserController

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CustomOAuth2UserService customOAuth2UserService;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = null;
        String name = null;
        String email = null;
        String loginType = null;

        // Kiểm tra xem đây là đăng nhập OAuth2 (Google) hay username/password
        if (authentication instanceof OAuth2AuthenticationToken) {
            OAuth2User oAuth2User = ((OAuth2AuthenticationToken) authentication).getPrincipal();

            if (oAuth2User != null) {
                // Lưu xuống DB
                customOAuth2UserService.saveOrUpdateUser(oAuth2User);
                // Lấy thông tin từ OAuth2 user
                name = oAuth2User.getAttribute("name");
                email = oAuth2User.getAttribute("email");
                loginType = "Google";

                // Tìm user trong DB dựa trên email
                Optional<User> userOpt = userRepository.findByEmail(email);
                if (userOpt.isPresent()) {
                    username = userOpt.get().getUsername();
                }
            }
        } else {
            // Đăng nhập thông thường
            username = authentication.getName();
            loginType = "Username/Password";

            // Lấy thông tin user từ DB
            Optional<User> userOpt = userRepository.findByUsername(username);
            if (userOpt.isPresent()) {
                User user = userOpt.get();
                name = user.getLastName() + " " + user.getFirstName();
                email = user.getEmail();
            }
        }

        model.addAttribute("username", username);
        model.addAttribute("name", name);
        model.addAttribute("email", email);
        model.addAttribute("loginType", loginType);

        return "dashboard";
    }
}
