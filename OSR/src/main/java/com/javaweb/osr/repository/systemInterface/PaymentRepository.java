package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Payment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepository extends JpaRepository<Payment, Integer> {
}