package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Integer> {
}