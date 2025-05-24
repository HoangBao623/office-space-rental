package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Building")
public class Building {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "buildingID")
    private Integer buildingID;

    @Column(name = "buildingName", unique = true, nullable = false, length = 100)
    private String buildingName;

    @Column(name = "street", length = 100)
    private String street;

    @Column(name = "wardcommune", length = 50)
    private String wardcommune;

    @Column(name = "district", length = 50)
    private String district;

    @Column(name = "cityprovince", nullable = false, length = 50)
    private String cityprovince;

    @OneToMany(mappedBy = "buildingID")
    private List<OfficeSpace> officeSpaces;

    public Integer getBuildingID() { return buildingID; }
    public void setBuildingID(Integer buildingID) { this.buildingID = buildingID; }
    public String getBuildingName() { return buildingName; }
    public void setBuildingName(String buildingName) { this.buildingName = buildingName; }
    public String getStreet() { return street; }
    public void setStreet(String street) { this.street = street; }
    public String getWardcommune() { return wardcommune; }
    public void setWardcommune(String wardcommune) { this.wardcommune = wardcommune; }
    public String getDistrict() { return district; }
    public void setDistrict(String district) { this.district = district; }
    public String getCityprovince() { return cityprovince; }
    public void setCityprovince(String cityprovince) { this.cityprovince = cityprovince; }
    public List<OfficeSpace> getOfficeSpaces() { return officeSpaces; }
    public void setOfficeSpaces(List<OfficeSpace> officeSpaces) { this.officeSpaces = officeSpaces; }
}