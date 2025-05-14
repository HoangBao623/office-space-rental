package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Role")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "roleID")
    private Integer roleID;

    @Column(name = "roleName", nullable = false, unique = true, length = 50)
    private String roleName;

    @OneToMany(mappedBy = "roleID")
    private List<DetailRole> detailRoles;

    public Integer getRoleID() { return roleID; }
    public void setRoleID(Integer roleID) { this.roleID = roleID; }
    public String getRoleName() { return roleName; }
    public void setRoleName(String roleName) { this.roleName = roleName; }
    public List<DetailRole> getDetailRoles() { return detailRoles; }
    public void setDetailRoles(List<DetailRole> detailRoles) { this.detailRoles = detailRoles; }
}