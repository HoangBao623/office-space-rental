package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Lessor_Service")
public class Lessor_Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lessor_ServiceID")
    private Integer lessor_ServiceID;

    @ManyToOne
    @JoinColumn(name = "lessorID", nullable = false)
    private User lessorID;

    @ManyToOne
    @JoinColumn(name = "serviceID", nullable = false)
    private Service serviceID;

    public Integer getLessor_ServiceID() {
        return lessor_ServiceID;
    }

    public void setLessor_ServiceID(Integer lessor_ServiceID) {
        this.lessor_ServiceID = lessor_ServiceID;
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