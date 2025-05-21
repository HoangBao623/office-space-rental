package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Order_Service")
public class Order_Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_ServiceID")
    private Integer order_ServiceID;

    @ManyToOne
    @JoinColumn(name = "orderID", nullable = false)
    private Order orderID;

    @ManyToOne
    @JoinColumn(name = "service_RentTypeID", nullable = false)
    private Service_RentType service_RentTypeID;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 0;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    public Integer getOrder_ServiceID() { return order_ServiceID; }
    public void setOrder_ServiceID(Integer order_ServiceID) { this.order_ServiceID = order_ServiceID; }
    public Order getOrderID() { return orderID; }
    public void setOrderID(Order orderID) { this.orderID = orderID; }
    public Service_RentType getService_RentTypeID() { return service_RentTypeID; }
    public void setService_RentTypeID(Service_RentType service_RentTypeID) { this.service_RentTypeID = service_RentTypeID; }
    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }
    public float getPrice() { return price; }
    public void setPrice(float price) { this.price = price; }
    public float getDeposit() { return deposit; }
    public void setDeposit(float deposit) { this.deposit = deposit; }
}