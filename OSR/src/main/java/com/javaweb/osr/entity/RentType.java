package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "RentType")
public class RentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rentTypeID")
    private Integer rentTypeID;

    @Column(name = "rentTypeName", nullable = false, unique = true, length = 50)
    private String rentTypeName;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "rentTypeID")
    private List<OSRentType> detailRentTypes;

    @OneToMany(mappedBy = "rentTypeID")
    private List<ServiceRentType> serviceRentTypes;

    public Integer getRentTypeID() { return rentTypeID; }
    public void setRentTypeID(Integer rentTypeID) { this.rentTypeID = rentTypeID; }
    public String getRentTypeName() { return rentTypeName; }
    public void setRentTypeName(String rentTypeName) { this.rentTypeName = rentTypeName; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public List<OSRentType> getDetailRentTypes() { return detailRentTypes; }
    public void setDetailRentTypes(List<OSRentType> detailRentTypes) { this.detailRentTypes = detailRentTypes; }

    public List<ServiceRentType> getServiceRentTypes() {
        return serviceRentTypes;
    }

    public void setServiceRentTypes(List<ServiceRentType> serviceRentTypes) {
        this.serviceRentTypes = serviceRentTypes;
    }
}