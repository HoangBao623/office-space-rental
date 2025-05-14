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

    @Column(name = "buildingName", nullable = false, length = 100)
    private String buildingName;

    @Column(name = "street", length = 100)
    private String street;

    @Column(name = "ward_commune", length = 50)
    private String ward_commune;

    @Column(name = "district", length = 50)
    private String district;

    @Column(name = "city_province", nullable = false, length = 50)
    private String city_province;

    @OneToMany(mappedBy = "buildingID")
    private List<OfficeSpace> officeSpaces;

    public Integer getBuildingID() { return buildingID; }
    public void setBuildingID(Integer buildingID) { this.buildingID = buildingID; }
    public String getBuildingName() { return buildingName; }
    public void setBuildingName(String buildingName) { this.buildingName = buildingName; }
    public String getStreet() { return street; }
    public void setStreet(String street) { this.street = street; }
    public String getWard_commune() { return ward_commune; }
    public void setWard_commune(String ward_commune) { this.ward_commune = ward_commune; }
    public String getDistrict() { return district; }
    public void setDistrict(String district) { this.district = district; }
    public String getCity_province() { return city_province; }
    public void setCity_province(String city_province) { this.city_province = city_province; }
    public List<OfficeSpace> getOfficeSpaces() { return officeSpaces; }
    public void setOfficeSpaces(List<OfficeSpace> officeSpaces) { this.officeSpaces = officeSpaces; }
}