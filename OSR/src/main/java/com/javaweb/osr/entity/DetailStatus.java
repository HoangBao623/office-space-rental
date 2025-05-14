package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DetailStatus")
public class DetailStatus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "detailStatusID")
    private Integer detailStatusID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpace;

    @ManyToOne
    @JoinColumn(name = "statusID", nullable = false)
    private Status status;

    @Column(name = "startDate", nullable = false)
    private Date startDate;

    @Column(name = "endDate", nullable = false)
    private Date endDate;

    @Column(name = "reason", nullable = false)
    private String reason;

    public Integer getDetailStatusID() { return detailStatusID; }
    public void setDetailStatusID(Integer detailStatusID) { this.detailStatusID = detailStatusID; }
    public OfficeSpace getOfficeSpace() { return officeSpace; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpace = officeSpace; }
    public Status getStatus() { return status; }
    public void setStatus(Status status) { this.status = status; }
    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }
    public String getReason() { return reason; }
    public void setReason(String reason) { this.reason = reason; }
}