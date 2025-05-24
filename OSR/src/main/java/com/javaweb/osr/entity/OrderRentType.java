package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OrderRentType")
public class OrderRentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "orderRentTypeID")
    private Integer orderRentTypeID;

    @ManyToOne
    @JoinColumn(name = "orderID", nullable = false)
    private Order orderID;

    @ManyToOne
    @JoinColumn(name = "oSRentTypeID", nullable = false)
    private OSRentType oSRentTypeID;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    public Integer getOrderRentTypeID() { return orderRentTypeID; }
    public void setOrderRentTypeID(Integer orderRentTypeID) { this.orderRentTypeID = orderRentTypeID; }
    public Order getOrderID() { return orderID; }
    public void setOrderID(Order orderID) { this.orderID = orderID; }
    public OSRentType getOSRentTypeID() { return oSRentTypeID; }
    public void setOSRentTypeID(OSRentType oSRentTypeID) { this.oSRentTypeID = oSRentTypeID; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public float getDeposit() { return deposit; }
    public void setDeposit(float deposit) { this.deposit = deposit; }
}