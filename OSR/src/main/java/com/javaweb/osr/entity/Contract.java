package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Contract")
public class Contract {
    public enum ContractStatus { Pending, In_progress, Completed, Canceled }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contractID")
    private Integer contractID;

    @Column(name = "contractDate", nullable = false)
    private Date contractDate;

    @Column(name = "startDate", nullable = false)
    private Date startDate;

    @Column(name = "endDate", nullable = false)
    private Date endDate;

    @Column(name = "numberPeople", nullable = false)
    private Integer numberPeople;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private ContractStatus status = ContractStatus.Pending;

    @Column(name = "totalPrice", nullable = false)
    private Double totalPrice;

    @Column(name = "deposit", nullable = false)
    private Double deposit;

    @Column(name = "paidAmount", nullable = false)
    private Double paidAmount = 0.0;

    @ManyToOne
    @JoinColumn(name = "lesseeID", nullable = false)
    private User lessee;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpace;

    @ManyToOne
    @JoinColumn(name = "rentTypeID", nullable = false)
    private RentType rentType;

    @Column(name = "note")
    private String note;

    @OneToMany(mappedBy = "contractID")
    private List<Payment> payments;

    public Integer getContractID() { return contractID; }
    public void setContractID(Integer contractID) { this.contractID = contractID; }
    public Date getContractDate() { return contractDate; }
    public void setContractDate(Date contractDate) { this.contractDate = contractDate; }
    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }
    public Integer getNumberPeople() { return numberPeople; }
    public void setNumberPeople(Integer numberPeople) { this.numberPeople = numberPeople; }
    public ContractStatus getStatus() { return status; }
    public void setStatus(ContractStatus status) { this.status = status; }
    public Double getTotalPrice() { return totalPrice; }
    public void setTotalPrice(Double totalPrice) { this.totalPrice = totalPrice; }
    public Double getDeposit() { return deposit; }
    public void setDeposit(Double deposit) { this.deposit = deposit; }
    public Double getPaidAmount() { return paidAmount; }
    public void setPaidAmount(Double paidAmount) { this.paidAmount = paidAmount; }
    public User getLessee() { return lessee; }
    public void setLessee(User lessee) { this.lessee = lessee; }
    public OfficeSpace getOfficeSpace() { return officeSpace; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpace = officeSpace; }
    public RentType getRentType() { return rentType; }
    public void setRentType(RentType rentType) { this.rentType = rentType; }
    public String getNote() { return note; }
    public void setNote(String note) { this.note = note; }
    public List<Payment> getPayments() { return payments; }
    public void setPayments(List<Payment> payments) { this.payments = payments; }
}