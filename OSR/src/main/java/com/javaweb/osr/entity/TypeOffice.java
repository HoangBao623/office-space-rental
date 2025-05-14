package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "TypeOffice")
public class TypeOffice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "typeOfficeID")
    private Integer typeOfficeID;

    @Column(name = "type", length = 50)
    private String type;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "typeOfficeID")
    private List<OfficeSpace> officeSpaces;

    public Integer getTypeOfficeID() { return typeOfficeID; }
    public void setTypeOfficeID(Integer typeOfficeID) { this.typeOfficeID = typeOfficeID; }
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    public List<OfficeSpace> getOfficeSpaces() { return officeSpaces; }
    public void setOfficeSpaces(List<OfficeSpace> officeSpaces) { this.officeSpaces = officeSpaces; }
}