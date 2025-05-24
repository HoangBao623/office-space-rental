package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

    // Tìm các sự kiện chưa được đồng bộ với Google Calendar
    List<Reservation> findByIsSyncedToCalendarFalse();

    // Tìm các sự kiện đã được đồng bộ với Google Calendar
    List<Reservation> findByIsSyncedToCalendarTrue();

    // Tìm sự kiện theo Google Event ID
    Reservation findByGoogleEventId(String googleEventId);

    // Tìm các sự kiện trong khoảng thời gian
//    @Query("SELECT e FROM Reservation e WHERE e.startTime >= :startTime AND e.endTime <= :endTime")
//    List<Reservation> findEventsBetween(java.time.LocalDateTime startTime, java.time.LocalDateTime endTime);
}