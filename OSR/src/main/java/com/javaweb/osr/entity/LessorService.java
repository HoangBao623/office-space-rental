package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "LessorService")
public class LessorService {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lessorServiceID")
    private Integer lessorServiceID;

    @ManyToOne
    @JoinColumn(name = "lessorID", nullable = false)
    private User lessorID;

    @ManyToOne
    @JoinColumn(name = "serviceID", nullable = false)
    private Service serviceID;

    public Integer getLessorServiceID() {
        return lessorServiceID;
    }

    public void setLessorServiceID(Integer lessorServiceID) {
        this.lessorServiceID = lessorServiceID;
    }

    public User getLessorID() {
        return lessorID;
    }

    public void setLessorID(User lessorID) {
        this.lessorID = lessorID;
    }

    public Service getServiceID() {
        return serviceID;
    }

    public void setServiceID(Service serviceID) {
        this.serviceID = serviceID;
    }
}