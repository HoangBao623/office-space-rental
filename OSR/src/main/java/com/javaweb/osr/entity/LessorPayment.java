package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "LessorPayment")
public class LessorPayment {
    public enum PaymentMethod { Cash, Bank_transfer }
    public enum PaymentStatus { Success, Failed, Refunded }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lessorPaymentID")
    private Integer lessorPaymentID;

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
    private Double paymentAmount;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private PaymentStatus status;

    @ManyToOne
    @JoinColumn(name = "lessorID", nullable = false)
    private User lessor;

    public Integer getLessorPaymentID() { return lessorPaymentID; }
    public void setLessorPaymentID(Integer lessorPaymentID) { this.lessorPaymentID = lessorPaymentID; }
    public String getTransactionID() { return transactionID; }
    public void setTransactionID(String transactionID) { this.transactionID = transactionID; }
    public Date getPaymentDate() { return paymentDate; }
    public void setPaymentDate(Date paymentDate) { this.paymentDate = paymentDate; }
    public PaymentMethod getPaymentMethod() { return paymentMethod; }
    public void setPaymentMethod(PaymentMethod paymentMethod) { this.paymentMethod = paymentMethod; }
    public String getNote() { return note; }
    public void setNote(String note) { this.note = note; }
    public Double getPaymentAmount() { return paymentAmount; }
    public void setPaymentAmount(Double paymentAmount) { this.paymentAmount = paymentAmount; }
    public PaymentStatus getStatus() { return status; }
    public void setStatus(PaymentStatus status) { this.status = status; }
    public User getLessor() { return lessor; }
    public void setLessor(User lessor) { this.lessor = lessor; }
}