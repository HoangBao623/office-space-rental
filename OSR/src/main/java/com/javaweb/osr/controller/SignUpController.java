package com.javaweb.osr.controller;

import com.javaweb.osr.dto.RegistrationDTO;
import com.javaweb.osr.service.Login_Signup.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class SignUpController {

    @Autowired
    private RegistrationService registrationService;

    @GetMapping("/signup")
    public String signup() { return "signup";
    }

    @PostMapping("/signup")
    public ResponseEntity<Map<String, Object>> signUp(@RequestBody RegistrationDTO registrationDTO) {

        try {
            // 1. Lưu vào cơ sở dữ liệu
            String reg = registrationService.saveUser(registrationDTO);

            // 2. Chuẩn bị phản hồi
            Map<String, Object> response = new HashMap<>();
            response.put("notification", reg);

            // 3. Trả về phản hồi với HTTP status 201
            return ResponseEntity.status(HttpStatus.CREATED).body(response);

        } catch (Exception e) {
            // 4. Xử lý lỗi
            Map<String, Object> errorResponse = new HashMap<>();
            errorResponse.put("message", "Failed to Sign up!");
            errorResponse.put("error", e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
        }
    }
}
