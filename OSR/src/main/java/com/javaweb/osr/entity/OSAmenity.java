package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OSAmenity")
public class OSAmenity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oSAmenityID")
    private Integer oSAmenityID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "amenityID", nullable = false)
    private Amenity amenityID;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 0;

    public Integer getDetailAmenityID() { return oSAmenityID; }
    public void setDetailAmenityID(Integer oSAmenityID) { this.oSAmenityID = oSAmenityID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public Amenity getAmenity() { return amenityID; }
    public void setAmenity(Amenity amenity) { this.amenityID = amenity; }
    public Integer getQuantity() { return quantity; }
    public void setQuantity(Integer quantity) { this.quantity = quantity; }
}