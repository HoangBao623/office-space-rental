package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "Payment")
public class Payment {

    public enum PaymentMethod { Cash, Bank_transfer }
    public enum PaymentStatus { Success, Failed, Refunded }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "paymentID")
    private Integer paymentID;

    @Column(name = "transactionID")
    private String transactionID;

    @Column(name = "paymentDate", nullable = false)
    private Date paymentDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "paymentMethod", nullable = false, length = 20)
    private PaymentMethod paymentMethod;

    @Column(name = "note")
    private String note;

    @Column(name = "paymentAmount", nullable = false)
    private float paymentAmount;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private PaymentStatus status;

    @ManyToOne
    @JoinColumn(name = "orderID", nullable = false)
    private Order orderID;

    public Integer getPaymentID() { return paymentID; }
    public void setPaymentID(Integer paymentID) { this.paymentID = paymentID; }
    public String getTransactionID() { return transactionID; }
    public void setTransactionID(String transactionID) { this.transactionID = transactionID; }
    public Date getPaymentDate() { return paymentDate; }
    public void setPaymentDate(Date paymentDate) { this.paymentDate = paymentDate; }
    public PaymentMethod getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(PaymentMethod paymentMethod) { this.paymentMethod = paymentMethod; }
    public String getNote() { return note; }
    public void setNote(String note) { this.note = note; }
    public float getPaymentAmount() { return paymentAmount; }
    public void setPaymentAmount(float paymentAmount) { this.paymentAmount = paymentAmount; }
    public PaymentStatus getStatus() { return status; }
    public void setStatus(PaymentStatus status) { this.status = status; }
    public Order getOrder() { return orderID; }
    public void setOrder(Order contract) { this.orderID = contract; }
}