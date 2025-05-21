package com.javaweb.osr.entity;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "User")
public class User {

    public enum Gender { Male, Female }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userID")
    private Integer userID;

    @Column(name = "googleId", unique = true)
    private String googleId;

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
    @Column(name = "gender")
    private Gender gender;

    @Column(name = "dOB")
    private LocalDate dOB;

    @Column(name = "address")
    private String address;

    @Column(name = "phoneNumber", length = 20)
    private String phoneNumber;

    @Column(name = "isActive")
    private Boolean isActive = true;

    @OneToMany(mappedBy = "lessorID")
    private List<OfficeSpace> officeSpaces;

    @OneToMany(mappedBy = "lesseeID")
    private List<Reservation> reservations;

    @OneToMany(mappedBy = "lesseeID")
    private List<Order> orders;

    @OneToMany(mappedBy = "lessorID")
    private List<LessorPayment> lessorPayments;

    @OneToMany(mappedBy = "lesseeID")
    private List<Favorite> favorites;

    @OneToMany(mappedBy = "lessorID")
    private List<Lessor_Service> lessorSerivices;

    @ManyToOne
    @JoinColumn(name = "roleID", nullable = false)
    private Role roleID;

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getGoogleId() {
        return googleId;
    }

    public void setGoogleId(String googleId) {
        this.googleId = googleId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public LocalDate getdOB() {
        return dOB;
    }

    public void setdOB(LocalDate dOB) {
        this.dOB = dOB;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }

    public List<OfficeSpace> getOfficeSpaces() {
        return officeSpaces;
    }

    public void setOfficeSpaces(List<OfficeSpace> officeSpaces) {
        this.officeSpaces = officeSpaces;
    }

    public List<Reservation> getReservations() {
        return reservations;
    }

    public void setReservations(List<Reservation> reservations) {
        this.reservations = reservations;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<LessorPayment> getLessorPayments() {
        return lessorPayments;
    }

    public void setLessorPayments(List<LessorPayment> lessorPayments) {
        this.lessorPayments = lessorPayments;
    }

    public List<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(List<Favorite> favorites) {
        this.favorites = favorites;
    }

    public List<Lessor_Service> getLessorSerivices() {
        return lessorSerivices;
    }

    public void setLessorSerivices(List<Lessor_Service> lessorSerivices) {
        this.lessorSerivices = lessorSerivices;
    }

    public Role getRoleID() {
        return roleID;
    }

    public void setRoleID(Role roleID) {
        this.roleID = roleID;
    }

}