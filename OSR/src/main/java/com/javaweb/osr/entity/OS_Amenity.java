package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OS_Amenity")
public class OS_Amenity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oS_AmenityID")
    private Integer oS_AmenityID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "amenityID", nullable = false)
    private Amenity amenityID;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 0;

    public Integer getDetailAmenityID() { return oS_AmenityID; }
    public void setDetailAmenityID(Integer oS_AmenityID) { this.oS_AmenityID = oS_AmenityID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public Amenity getAmenity() { return amenityID; }
    public void setAmenity(Amenity amenity) { this.amenityID = amenity; }
    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }
}