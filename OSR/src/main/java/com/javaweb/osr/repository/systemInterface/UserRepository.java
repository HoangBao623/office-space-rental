package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
}