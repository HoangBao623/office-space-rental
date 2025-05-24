package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "OSStatus")
public class OSStatus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oSStatusID")
    private Integer oSStatusID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "statusID", nullable = false)
    private Status statusID;

    @Column(name = "startDate", nullable = false)
    private Date startDate;

    @Column(name = "endDate", nullable = false)
    private Date endDate;

    @Column(name = "reason", nullable = false)
    private String reason;

    public Integer getDetailStatusID() { return oSStatusID; }
    public void setDetailStatusID(Integer oSStatusID) { this.oSStatusID = oSStatusID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public Status getStatus() { return statusID; }
    public void setStatus(Status status) { this.statusID = status; }
    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }
    public String getReason() { return reason; }
    public void setReason(String reason) { this.reason = reason; }
}