//package com.javaweb.osr.service.Calendar;
//
//import com.google.api.services.calendar.model.Event;
//import com.javaweb.osr.entity.Reservation;
//import com.javaweb.osr.repository.systemInterface.ReservationRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.scheduling.annotation.Scheduled;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//
//@Service
//public class CalendarSyncService {
//
//    @Autowired
//    private ReservationRepository reservationRepository;
//
//    @Autowired
//    private GoogleCalendarService googleCalendarService;
//
//    /**
//     * Đồng bộ tất cả sự kiện chưa được đồng bộ từ database lên Google Calendar
//     */
//    @Transactional
//    public void syncUnsyncedEvents() {
//
//        List<Reservation> unsyncedEvents = reservationRepository.findByIsSyncedToCalendarFalse();
//
//        for (Reservation eventEntity : unsyncedEvents) {
//            try {
//                Event googleEvent = googleCalendarService.createEvent(
//                        "ĐẶT LỊCH XEM VĂN PHÒNG",
//                        eventEntity.getNote(),
//                        eventEntity.getViewDate(),
//                        eventEntity.getViewDate().plusHours(1) // Giả sử sự kiện kéo dài 1 giờ
//                );
//
//                if (googleEvent != null) {
//                    // Cập nhật trạng thái đồng bộ và lưu Google Event ID
//                    eventEntity.setIsSyncedToCalendar(true);
//                    eventEntity.setGoogleEventId(googleEvent.getId());
//                    reservationRepository.save(eventEntity);
//
//                    System.out.println("Đã đồng bộ sự kiện: " + eventEntity.getReservationID());
//                }
//            } catch (Exception e) {
//                System.err.println("Lỗi khi đồng bộ sự kiện " + eventEntity.getReservationID() + ": " + e.getMessage());
//            }
//        }
//    }
//
//    /**
//     * Đồng bộ một sự kiện cụ thể
//     */
//    @Transactional
//    public boolean syncSingleEvent(Integer eventId) {
//        Reservation eventEntity = reservationRepository.findById(eventId).orElse(null);
//
//        if (eventEntity == null) {
//            System.err.println("Không tìm thấy sự kiện với ID: " + eventId);
//            return false;
//        }
//
//        if (eventEntity.getIsSyncedToCalendar()) {
//            System.out.println("Sự kiện đã được đồng bộ trước đó: " + eventEntity.getReservationID());
//            return true;
//        }
//
//        try {
//            Event googleEvent = googleCalendarService.createEvent(
//                    "ĐẶT LỊCH XEM VĂN PHÒNG",
//                    eventEntity.getNote(),
//                    eventEntity.getViewDate(),
//                    eventEntity.getViewDate().plusHours(2)
//            );
//
//            if (googleEvent != null) {
//                eventEntity.setIsSyncedToCalendar(true);
//                eventEntity.setGoogleEventId(googleEvent.getId());
//                reservationRepository.save(eventEntity);
//
//                System.out.println("Đã đồng bộ sự kiện: " + eventEntity.getReservationID());
//                return true;
//            }
//        } catch (Exception e) {
//            System.err.println("Lỗi khi đồng bộ sự kiện " + eventEntity.getReservationID() + ": " + e.getMessage());
//        }
//
//        return false;
//    }
//
//    /**
//     * Tự động đồng bộ mỗi giờ (có thể thay đổi theo nhu cầu)
//     */
//    @Scheduled(fixedRate = 3600000) // 1 giờ = 3600000ms
//    public void scheduledSync() {
//        System.out.println("Bắt đầu đồng bộ tự động...");
//        syncUnsyncedEvents();
//        System.out.println("Hoàn thành đồng bộ tự động.");
//    }
//
//    /**
//     * Tạo và đồng bộ sự kiện mới ngay lập tức
//     */
//    @Transactional
//    public Reservation createAndSyncEvent(String title, String description,
//                                          java.time.LocalDateTime startTime,
//                                          java.time.LocalDateTime endTime) {
//        // Tạo sự kiện trong database
//        Reservation eventEntity = new Reservation("ĐẶT LỊCH XEM VĂN PHÒNG", description, startTime, endTime);
//        eventEntity = reservationRepository.save(eventEntity);
//
//        // Đồng bộ ngay lập tức
//        if (syncSingleEvent(eventEntity.getReservationID())) {
//            return reservationRepository.findById(eventEntity.getReservationID()).orElse(eventEntity);
//        }
//
//        return eventEntity;
//    }
//}
