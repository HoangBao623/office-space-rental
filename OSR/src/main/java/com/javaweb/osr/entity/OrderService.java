package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OrderService")
public class OrderService {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "orderServiceID")
    private Integer orderServiceID;

    @ManyToOne
    @JoinColumn(name = "orderID", nullable = false)
    private Order orderID;

    @ManyToOne
    @JoinColumn(name = "serviceRentTypeID", nullable = false)
    private ServiceRentType serviceRentTypeID;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 0;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    public Integer getOrderServiceID() { return orderServiceID; }
    public void setOrderServiceID(Integer orderServiceID) { this.orderServiceID = orderServiceID; }
    public Order getOrderID() { return orderID; }
    public void setOrderID(Order orderID) { this.orderID = orderID; }
    public ServiceRentType getServiceRentTypeID() { return serviceRentTypeID; }
    public void setServiceRentTypeID(ServiceRentType serviceRentTypeID) { this.serviceRentTypeID = serviceRentTypeID; }
    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public float getDeposit() { return deposit; }
    public void setDeposit(float deposit) { this.deposit = deposit; }
}