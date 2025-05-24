package com.javaweb.osr.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "ServiceRentType")
public class ServiceRentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "serviceRentTypeID")
    private Integer serviceRentTypeID;

    @ManyToOne
    @JoinColumn(name = "lessorServiceID", nullable = false)
    private LessorService lessorServiceID;

    @ManyToOne
    @JoinColumn(name = "rentTypeID", nullable = false)
    private RentType rentTypeID;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    @OneToMany(mappedBy = "serviceRentTypeID")
    private List<OrderService> orderServices;

    public Integer getServiceRentTypeID() {
        return serviceRentTypeID;
    }

    public void setServiceRentTypeID(Integer serviceRentTypeID) {
        this.serviceRentTypeID = serviceRentTypeID;
    }

    public LessorService getLessorServiceID() {
        return lessorServiceID;
    }

    public void setLessorServiceID(LessorService lessorServiceID) {
        this.lessorServiceID = lessorServiceID;
    }

    public RentType getRentTypeID() {
        return rentTypeID;
    }

    public void setRentTypeID(RentType rentTypeID) {
        this.rentTypeID = rentTypeID;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getDeposit() {
        return deposit;
    }

    public void setDeposit(float deposit) {
        this.deposit = deposit;
    }

    public List<OrderService> getOrderServices() {
        return orderServices;
    }

    public void setOrderServices(List<OrderService> orderServices) {
        this.orderServices = orderServices;
    }
}