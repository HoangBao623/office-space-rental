package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "DetailRentType")
public class DetailRentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "detailRentTypeID")
    private Integer detailRentTypeID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpace;

    @ManyToOne
    @JoinColumn(name = "rentTypeID", nullable = false)
    private RentType rentType;

    @Column(name = "price", nullable = false)
    private Double price;

    @Column(name = "deposit", nullable = false)
    private Double deposit;

    public Integer getDetailRentTypeID() { return detailRentTypeID; }
    public void setDetailRentTypeID(Integer detailRentTypeID) { this.detailRentTypeID = detailRentTypeID; }
    public OfficeSpace getOfficeSpace() { return officeSpace; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpace = officeSpace; }
    public RentType getRentType() { return rentType; }
    public void setRentType(RentType rentType) { this.rentType = rentType; }
    public Double getPrice() { return price; }
    public void setPrice(Double price) { this.price = price; }
    public Double getDeposit() { return deposit; }
    public void setDeposit(Double deposit) { this.deposit = deposit; }
}