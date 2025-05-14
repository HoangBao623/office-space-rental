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
    private List<DetailRentType> detailRentTypes;

    @OneToMany(mappedBy = "rentTypeID")
    private List<Contract> contracts;

    public Integer getRentTypeID() { return rentTypeID; }
    public void setRentTypeID(Integer rentTypeID) { this.rentTypeID = rentTypeID; }
    public String getRentTypeName() { return rentTypeName; }
    public void setRentTypeName(String rentTypeName) { this.rentTypeName = rentTypeName; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public List<DetailRentType> getDetailRentTypes() { return detailRentTypes; }
    public void setDetailRentTypes(List<DetailRentType> detailRentTypes) { this.detailRentTypes = detailRentTypes; }
    public List<Contract> getContracts() { return contracts; }
    public void setContracts(List<Contract> contracts) { this.contracts = contracts; }
}