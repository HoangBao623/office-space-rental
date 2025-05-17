package com.javaweb.osr.service.Login_Signup;


import com.javaweb.osr.entity.User;
import com.javaweb.osr.repository.systemInterface.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomUserDetailsSerImplement implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    public CustomUserDetailsSerImplement(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("Account not found");
        }
        return new CustomUserDetailsService(user.get());
    }
}

