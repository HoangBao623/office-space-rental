package com.javaweb.osr.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "OSRentType")
public class OSRentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oSRentTypeID")
    private Integer oSRentTypeID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "rentTypeID", nullable = false)
    private RentType rentTypeID;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    @OneToMany(mappedBy = "oSRentTypeID")
    private List<OrderRentType> orderRentTypes;

    public Integer getDetailRentTypeID() { return oSRentTypeID; }
    public void setDetailRentTypeID(Integer oSRentTypeID) { this.oSRentTypeID = oSRentTypeID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public RentType getRentType() { return rentTypeID; }
    public void setRentType(RentType rentType) { this.rentTypeID = rentType; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public float getDeposit() { return deposit; }
    public void setDeposit(float deposit) { this.deposit = deposit; }
    public List<OrderRentType> getOrderRentTypes() { return orderRentTypes; }
    public void setOrderRentTypes(List<OrderRentType> orderRentTypes) { this.orderRentTypes = orderRentTypes; }
}