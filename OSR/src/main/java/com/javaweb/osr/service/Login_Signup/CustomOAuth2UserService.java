package com.javaweb.osr.service.Login_Signup;

import com.javaweb.osr.entity.User;
import com.javaweb.osr.repository.systemInterface.RoleRepository;
import com.javaweb.osr.repository.systemInterface.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2User oauth2User = new DefaultOAuth2UserService().loadUser(userRequest);
        return oauth2User;
    }

    public void saveOrUpdateUser(OAuth2User oAuth2User) {

        Optional<User> userOptional = userRepository.findByGoogleId(oAuth2User.getAttribute("sub"));

        if (userOptional.isPresent()) {
            // Cập nhật thông tin người dùng
            User existingUser = userOptional.get();
            existingUser.setUsername(oAuth2User.getAttribute("name"));
            existingUser.setEmail(oAuth2User.getAttribute("email"));
            existingUser.setFirstName(oAuth2User.getAttribute("given_name"));
            existingUser.setLastName(oAuth2User.getAttribute("family_name"));
            userRepository.save(existingUser);
        } else {
            // Kiểm tra xem email đã tồn tại chưa
            Optional<User> userByEmailOptional = userRepository.findByEmail(oAuth2User.getAttribute("email"));

            if (userByEmailOptional.isPresent()) {
                // Cập nhật GoogleId cho người dùng hiện có
                User existingUser = userByEmailOptional.get();
                existingUser.setGoogleId(oAuth2User.getAttribute("sub"));
                userRepository.save(existingUser);
            } else {
                // Tạo người dùng mới
                User newUser = new User();
                newUser.setUsername(oAuth2User.getAttribute("name"));
                newUser.setEmail(oAuth2User.getAttribute("email"));
                newUser.setGoogleId(oAuth2User.getAttribute("sub"));
                newUser.setPassword(oAuth2User.getAttribute("sub"));
                newUser.setFirstName(oAuth2User.getAttribute("given_name"));
                newUser.setLastName(oAuth2User.getAttribute("family_name"));
                newUser.setRole(roleRepository.findById(3).get());
                userRepository.save(newUser);
            }
        }
    }
}
