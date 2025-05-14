package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "User")
public class User {
    public enum Gender { Male, Female }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userID")
    private Integer userID;

    @Column(name = "username", nullable = false, unique = true, length = 50)
    private String username;

    @Column(name = "password", nullable = false, length = 250)
    private String password;

    @Column(name = "email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "lastName", nullable = false, length = 50)
    private String lastName;

    @Column(name = "firstName", nullable = false, length = 50)
    private String firstName;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender", nullable = false)
    private Gender gender;

    @Column(name = "dOB")
    private Date dOB;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "phoneNumber", nullable = false, length = 20)
    private String phoneNumber;

    @Column(name = "isActive")
    private Boolean isActive = true;

    @OneToMany(mappedBy = "userID")
    private List<DetailRole> detailRoles;

    @OneToMany(mappedBy = "lessorID")
    private List<OfficeSpace> officeSpaces;

    @OneToMany(mappedBy = "lesseeID")
    private List<Reservation> reservations;

    @OneToMany(mappedBy = "lesseeID")
    private List<Contract> contracts;

    @OneToMany(mappedBy = "lessorID")
    private List<LessorPayment> lessorPayments;

    @OneToMany(mappedBy = "lesseeID")
    private List<Favorite> favorites;

    public Integer getUserID() { return userID; }
    public void setUserID(Integer userID) { this.userID = userID; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }
    public Gender getGender() { return gender; }
    public void setGender(Gender gender) { this.gender = gender; }
    public Date getdOB() { return dOB; }
    public void setdOB(Date dOB) { this.dOB = dOB; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getPhoneNumber() { return phoneNumber; }
    public void setPhoneNumber(String phoneNumber) { this.phoneNumber = phoneNumber; }
    public Boolean getIsActive() { return isActive; }
    public void setIsActive(Boolean isActive) { this.isActive = isActive; }
    public List<DetailRole> getDetailRoles() { return detailRoles; }
    public void setDetailRoles(List<DetailRole> detailRoles) { this.detailRoles = detailRoles; }
    public List<OfficeSpace> getOfficeSpaces() { return officeSpaces; }
    public void setOfficeSpaces(List<OfficeSpace> officeSpaces) { this.officeSpaces = officeSpaces; }
    public List<Reservation> getReservations() { return reservations; }
    public void setReservations(List<Reservation> reservations) { this.reservations = reservations; }
    public List<Contract> getContracts() { return contracts; }
    public void setContracts(List<Contract> contracts) { this.contracts = contracts; }
    public List<LessorPayment> getLessorPayments() { return lessorPayments; }
    public void setLessorPayments(List<LessorPayment> lessorPayments) { this.lessorPayments = lessorPayments; }
    public List<Favorite> getFavorites() { return favorites; }
    public void setFavorites(List<Favorite> favorites) { this.favorites = favorites; }
}