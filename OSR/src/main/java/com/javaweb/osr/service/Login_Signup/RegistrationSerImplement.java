package com.javaweb.osr.service.Login_Signup;

import com.javaweb.osr.dto.RegistrationDTO;
import com.javaweb.osr.entity.User;
import com.javaweb.osr.repository.systemInterface.RoleRepository;
import com.javaweb.osr.repository.systemInterface.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class RegistrationSerImplement implements RegistrationService {

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public String saveUser(RegistrationDTO form) {

        if (userRepository.findByUsername(form.getUsername()).isPresent()) {
            return "Username already exists!";
        }

        if (!form.getPassword().equals(form.getPassword2())) {
            return "Passwords do not match!";
        }

        // Lưu Account
        User user = new User();
        user.setUsername(form.getUsername());
        user.setPassword(passwordEncoder.encode(form.getPassword()));
        user.setEmail(form.getEmail());
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        if ("Male".equals(form.getGender()))
            user.setGender(User.Gender.Male);
        else
            user.setGender(User.Gender.Female);
        user.setdOB(form.getdOB());
        user.setAddress(form.getAddress());
        user.setPhoneNumber(form.getPhone());
        user.setRoleID(roleRepository.findById(3).get());
        userRepository.save(user);

        return "Registration successful!";
    }
}
