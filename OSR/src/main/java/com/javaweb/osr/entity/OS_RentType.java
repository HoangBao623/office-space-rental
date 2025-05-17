package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OS_RentType")
public class OS_RentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oS_RentTypeID")
    private Integer oS_RentTypeID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "rentTypeID", nullable = false)
    private RentType rentTypeID;

    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "deposit", nullable = false)
    private Double deposit;

    public Integer getDetailRentTypeID() { return oS_RentTypeID; }
    public void setDetailRentTypeID(Integer oS_RentTypeID) { this.oS_RentTypeID = oS_RentTypeID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public RentType getRentType() { return rentTypeID; }
    public void setRentType(RentType rentType) { this.rentTypeID = rentType; }
    public Double getPrice() { return price; }
    public void setPrice(Double price) { this.price = price; }
    public Double getDeposit() { return deposit; }
    public void setDeposit(Double deposit) { this.deposit = deposit; }
}