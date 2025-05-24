//package com.javaweb.osr.controller;
//
//import com.javaweb.osr.entity.Reservation;
//import com.javaweb.osr.repository.systemInterface.ReservationRepository;
//import com.javaweb.osr.service.Calendar.CalendarSyncService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.*;
//
//import java.time.LocalDateTime;
//import java.util.List;
//import java.util.Map;
//
//@RestController
//@RequestMapping("/calendar")
//public class CalendarController {
//
//    @Autowired
//    private CalendarSyncService calendarSyncService;
//
//    @Autowired
//    private ReservationRepository reservationRepository;
//
//    /**
//     * Tạo sự kiện mới và đồng bộ với Google Calendar
//     */
//    @PostMapping("/create-event")
//    public ResponseEntity<?> createEvent(@RequestBody Map<String, Object> eventData) {
//        try {
//            String title = "ĐẶT LỊCH XEM VĂN PHÒNG";
//            String description = (String) eventData.get("note");
//            LocalDateTime startTime = LocalDateTime.parse((String) eventData.get("viewDate"));
//            LocalDateTime endTime = LocalDateTime.parse((String) eventData.get("viewDate")).plusHours(2);
//
//            Reservation createdEvent = calendarSyncService.createAndSyncEvent(title, description, startTime, endTime);
//
//            return ResponseEntity.ok(Map.of(
//                    "success", true,
//                    "message", "Sự kiện đã được tạo và đồng bộ thành công",
//                    "event", createdEvent
//            ));
//        } catch (Exception e) {
//            return ResponseEntity.badRequest().body(Map.of(
//                    "success", false,
//                    "message", "Lỗi khi tạo sự kiện: " + e.getMessage()
//            ));
//        }
//    }
//
//    /**
//     * Đồng bộ tất cả sự kiện chưa được đồng bộ
//     */
//    @GetMapping("/sync-all")
//    public ResponseEntity<?> syncAllEvents() {
//        try {
//            calendarSyncService.syncUnsyncedEvents();
//            return ResponseEntity.ok(Map.of(
//                    "success", true,
//                    "message", "Đã đồng bộ tất cả sự kiện chưa được đồng bộ"
//            ));
//        } catch (Exception e) {
//            return ResponseEntity.badRequest().body(Map.of(
//                    "success", false,
//                    "message", "Lỗi khi đồng bộ: " + e.getMessage()
//            ));
//        }
//    }
//
//    /**
//     * Đồng bộ một sự kiện cụ thể
//     */
//    @PostMapping("/sync-event/{eventId}")
//    public ResponseEntity<?> syncSingleEvent(@PathVariable Integer eventId) {
//        boolean success = calendarSyncService.syncSingleEvent(eventId);
//
//        if (success) {
//            return ResponseEntity.ok(Map.of(
//                    "success", true,
//                    "message", "Sự kiện đã được đồng bộ thành công"
//            ));
//        } else {
//            return ResponseEntity.badRequest().body(Map.of(
//                    "success", false,
//                    "message", "Không thể đồng bộ sự kiện"
//            ));
//        }
//    }
//
//    /**
//     * Lấy danh sách tất cả sự kiện
//     */
//    @GetMapping("/events")
//    public ResponseEntity<List<Reservation>> getAllEvents() {
//        List<Reservation> events = reservationRepository.findAll();
//        return ResponseEntity.ok(events);
//    }
//
//    /**
//     * Lấy danh sách sự kiện chưa được đồng bộ
//     */
//    @GetMapping("/unsynced-events")
//    public ResponseEntity<List<Reservation>> getUnsyncedEvents() {
//        List<Reservation> events = reservationRepository.findByIsSyncedToCalendarFalse();
//        return ResponseEntity.ok(events);
//    }
//
//    /**
//     * Lấy danh sách sự kiện đã được đồng bộ
//     */
//    @GetMapping("/synced-events")
//    public ResponseEntity<List<Reservation>> getSyncedEvents() {
//        List<Reservation> events = reservationRepository.findByIsSyncedToCalendarTrue();
//        return ResponseEntity.ok(events);
//    }
//}