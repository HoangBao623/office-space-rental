package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Order")
public class Order {
    public enum OrderStatus { Pending, In_progress, Completed, Canceled }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "orderID")
    private Integer orderID;

    @Column(name = "orderDate", nullable = false)
    private Date orderDate;

    @Column(name = "startDate", nullable = false)
    private Date startDate;

    @Column(name = "endDate", nullable = false)
    private Date endDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private OrderStatus status = OrderStatus.Pending;

    @Column(name = "totalAmount", nullable = false)
    private float totalAmount = 0;

    @Column(name = "paidAmount", nullable = false)
    private float paidAmount = 0;

    @ManyToOne
    @JoinColumn(name = "lesseeID", nullable = false)
    private User lesseeID;

    @Column(name = "note")
    private String note;

    @OneToMany(mappedBy = "orderID")
    private List<Payment> payments;

    @OneToMany(mappedBy = "orderID")
    private List<Order_Service> orderServices;

    @OneToMany(mappedBy = "orderID")
    private List<Order_RentType> orderRentTypes;

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public OrderStatus getStatus() {
        return status;
    }

    public void setStatus(OrderStatus status) {
        this.status = status;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public float getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(float paidAmount) {
        this.paidAmount = paidAmount;
    }

    public User getLesseeID() {
        return lesseeID;
    }

    public void setLesseeID(User lesseeID) {
        this.lesseeID = lesseeID;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public List<Payment> getPayments() {
        return payments;
    }

    public void setPayments(List<Payment> payments) {
        this.payments = payments;
    }

    public List<Order_Service> getOrderServices() {
        return orderServices;
    }

    public void setOrderServices(List<Order_Service> orderServices) {
        this.orderServices = orderServices;
    }

    public List<Order_RentType> getOrderRentTypes() {
        return orderRentTypes;
    }

    public void setOrderRentTypes(List<Order_RentType> orderRentTypes) {
        this.orderRentTypes = orderRentTypes;
    }
}