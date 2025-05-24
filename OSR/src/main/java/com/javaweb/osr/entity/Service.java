package com.javaweb.osr.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "Service")
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "serviceID")
    private Integer serviceID;

    @Column(name = "serviceName", nullable = false, unique = true, length = 100)
    private String serviceName;

    @Column(name = "description")
    private String description;

    @Column(name = "isActive")
    private Boolean isActive = true;

    @OneToMany(mappedBy = "serviceID")
    private List<LessorService> lessorServices;

    public Integer getServiceID() {
        return serviceID;
    }

    public void setServiceID(Integer serviceID) {
        this.serviceID = serviceID;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }

    public List<LessorService> getLessorServices() {
        return lessorServices;
    }

    public void setLessorServices(List<LessorService> lessorServices) {
        this.lessorServices = lessorServices;
    }
}