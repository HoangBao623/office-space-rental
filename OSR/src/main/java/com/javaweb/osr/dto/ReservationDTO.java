package com.javaweb.osr.dto;

import java.time.LocalDateTime;

public class ReservationDTO {

    private LocalDateTime viewDate;
    private String note;

    public LocalDateTime getViewDate() {
        return viewDate;
    }

    public void setViewDate(LocalDateTime viewDate) {
        this.viewDate = viewDate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
