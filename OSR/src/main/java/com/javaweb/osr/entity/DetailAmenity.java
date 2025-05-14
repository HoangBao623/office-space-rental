package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "DetailAmenity")
public class DetailAmenity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "detailAmenityID")
    private Integer detailAmenityID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpace;

    @ManyToOne
    @JoinColumn(name = "amenityID", nullable = false)
    private Amenity amenity;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 0;

    public Integer getDetailAmenityID() { return detailAmenityID; }
    public void setDetailAmenityID(Integer detailAmenityID) { this.detailAmenityID = detailAmenityID; }
    public OfficeSpace getOfficeSpace() { return officeSpace; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpace = officeSpace; }
    public Amenity getAmenity() { return amenity; }
    public void setAmenity(Amenity amenity) { this.amenity = amenity; }
    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }
}