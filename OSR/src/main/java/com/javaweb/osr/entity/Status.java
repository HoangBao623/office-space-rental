package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Status")
public class Status {
    public enum StatusName { Available, Unavailable, Occupied, Pending_Approval }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "statusID")
    private Integer statusID;

    @Enumerated(EnumType.STRING)
    @Column(name = "statusName", nullable = false, length = 20)
    private StatusName statusName;

    @OneToMany(mappedBy = "statusID")
    private List<DetailStatus> detailStatuses;

    public Integer getStatusID() { return statusID; }
    public void setStatusID(Integer statusID) { this.statusID = statusID; }
    public StatusName getStatusName() { return statusName; }
    public void setStatusName(StatusName statusName) { this.statusName = statusName; }
    public List<DetailStatus> getDetailStatuses() { return detailStatuses; }
    public void setDetailStatuses(List<DetailStatus> detailStatuses) { this.detailStatuses = detailStatuses; }
}