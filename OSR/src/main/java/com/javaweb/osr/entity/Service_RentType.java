package com.javaweb.osr.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "Service_RentType")
public class Service_RentType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "service_RentTypeID")
    private Integer service_RentTypeID;

    @ManyToOne
    @JoinColumn(name = "lessor_ServiceID", nullable = false)
    private Lessor_Service lessor_ServiceID;

    @ManyToOne
    @JoinColumn(name = "rentTypeID", nullable = false)
    private RentType rentTypeID;

    @Column(name = "price", nullable = false)
    private float price;

    @Column(name = "deposit", nullable = false)
    private float deposit;

    @OneToMany(mappedBy = "service_RentTypeID")
    private List<Order_Service> orderServices;

    public Integer getService_RentTypeID() {
        return service_RentTypeID;
    }

    public void setService_RentTypeID(Integer service_RentTypeID) {
        this.service_RentTypeID = service_RentTypeID;
    }

    public Lessor_Service getLessor_ServiceID() {
        return lessor_ServiceID;
    }

    public void setLessor_ServiceID(Lessor_Service lessor_ServiceID) {
        this.lessor_ServiceID = lessor_ServiceID;
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

    public List<Order_Service> getOrderServices() {
        return orderServices;
    }

    public void setOrderServices(List<Order_Service> orderServices) {
        this.orderServices = orderServices;
    }
}