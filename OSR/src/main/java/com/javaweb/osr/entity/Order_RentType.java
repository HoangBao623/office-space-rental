package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Order_RentType")
public class Order_RentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_RentTypeID")
    private Integer order_RentTypeID;

    @ManyToOne
    @JoinColumn(name = "orderID", nullable = false)
    private Order orderID;

    @ManyToOne
    @JoinColumn(name = "oS_RentTypeID", nullable = false)
    private OS_RentType oS_RentTypeID;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    public Integer getOrder_RentTypeID() { return order_RentTypeID; }
    public void setOrder_RentTypeID(Integer order_RentTypeID) { this.order_RentTypeID = order_RentTypeID; }
    public Order getOrderID() { return orderID; }
    public void setOrderID(Order orderID) { this.orderID = orderID; }
    public OS_RentType getOS_RentTypeID() { return oS_RentTypeID; }
    public void setOS_RentTypeID(OS_RentType oS_RentTypeID) { this.oS_RentTypeID = oS_RentTypeID; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public float getDeposit() { return deposit; }
    public void setDeposit(float deposit) { this.deposit = deposit; }
}