package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Reservation")
public class Reservation {

    public enum ReservationStatus { Pending, Completed, Canceled }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reservationID")
    private Integer reservationID;

    @Column(name = "viewDate", nullable = false)
    private Date viewDate;

    @Column(name = "note")
    private String note;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private ReservationStatus status = ReservationStatus.Pending;

    @Column(name = "salesID")
    private Integer salesID;

    @ManyToOne
    @JoinColumn(name = "lesseeID", nullable = false)
    private User lesseeID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    public Integer getReservationID() { return reservationID; }
    public void setReservationID(Integer reservationID) { this.reservationID = reservationID; }
    public Date getViewDate() { return viewDate; }
    public void setViewDate(Date viewDate) { this.viewDate = viewDate; }
    public String getNote() { return note; }
    public void setNote(String note) { this.note = note; }
    public ReservationStatus getStatus() { return status; }
    public void setStatus(ReservationStatus status) { this.status = status; }
    public Integer getSalesID() { return salesID; }
    public void setSalesID(Integer salesID) { this.salesID = salesID; }
    public User getLessee() { return lesseeID; }
    public void setLessee(User lessee) { this.lesseeID = lessee; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
}