package com.javaweb.osr.entity;

import jakarta.persistence.*;

import java.util.List;

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
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    @OneToMany(mappedBy = "oS_RentTypeID")
    private List<Order_RentType> orderRentTypes;

    public Integer getDetailRentTypeID() { return oS_RentTypeID; }
    public void setDetailRentTypeID(Integer oS_RentTypeID) { this.oS_RentTypeID = oS_RentTypeID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public RentType getRentType() { return rentTypeID; }
    public void setRentType(RentType rentType) { this.rentTypeID = rentType; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public float getDeposit() { return deposit; }
    public void setDeposit(float deposit) { this.deposit = deposit; }
    public List<Order_RentType> getOrderRentTypes() { return orderRentTypes; }
    public void setOrderRentTypes(List<Order_RentType> orderRentTypes) { this.orderRentTypes = orderRentTypes; }
}