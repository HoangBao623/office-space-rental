package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Amenity")
public class Amenity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "amenityID")
    private Integer amenityID;

    @Column(name = "amenityName", nullable = false, unique = true, length = 50)
    private String amenityName;

    @OneToMany(mappedBy = "amenityID")
    private List<DetailAmenity> detailAmenities;

    public Integer getAmenityID() { return amenityID; }
    public void setAmenityID(Integer amenityID) { this.amenityID = amenityID; }
    public String getAmenityName() { return amenityName; }
    public void setAmenityName(String amenityName) { this.amenityName = amenityName; }
    public List<DetailAmenity> getDetailAmenities() { return detailAmenities; }
    public void setDetailAmenities(List<DetailAmenity> detailAmenities) { this.detailAmenities = detailAmenities; }
}