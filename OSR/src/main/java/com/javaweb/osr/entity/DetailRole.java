package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "DetailRole")
public class DetailRole {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "detailRoleID")
    private Integer detailRoleID;

    @ManyToOne
    @JoinColumn(name = "userID", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "roleID", nullable = false)
    private Role role;

    public Integer getDetailRoleID() { return detailRoleID; }
    public void setDetailRoleID(Integer detailRoleID) { this.detailRoleID = detailRoleID; }
    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }
    public Role getRole() { return role; }
    public void setRole(Role role) { this.role = role; }
}