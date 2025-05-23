package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "OfficeSpace")
public class OfficeSpace {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "officeSpaceID")
    private Integer officeSpaceID;

    @Column(name = "title", nullable = false, length = 100)
    private String title;

    @Column(name = "size", nullable = false)
    private Double size;

    @Column(name = "capacity", nullable = false)
    private Integer capacity;

    @ManyToOne
    @JoinColumn(name = "buildingID", nullable = false)
    private Building buildingID;

    @ManyToOne
    @JoinColumn(name = "lessorID", nullable = false)
    private User lessorID;

    @ManyToOne
    @JoinColumn(name = "typeOfficeID", nullable = false)
    private TypeOffice typeOfficeID;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<Image> images;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<OSTag> detailTags;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<OSAmenity> detailAmenities;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<OSRentType> detailRentTypes;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<OSStatus> detailStatuses;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<Reservation> reservations;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<Favorite> favorites;

    public Integer getOfficeSpaceID() { return officeSpaceID; }
    public void setOfficeSpaceID(Integer officeSpaceID) { this.officeSpaceID = officeSpaceID; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public Double getSize() { return size; }
    public void setSize(Double size) { this.size = size; }
    public Integer getCapacity() { return capacity; }
    public void setCapacity(Integer capacity) { this.capacity = capacity; }
    public Building getBuilding() { return buildingID; }
    public void setBuilding(Building building) { this.buildingID = building; }
    public User getLessor() { return lessorID; }
    public void setLessor(User lessor) { this.lessorID = lessor; }
    public TypeOffice getTypeOffice() { return typeOfficeID; }
    public void setTypeOffice(TypeOffice typeOffice) { this.typeOfficeID = typeOffice; }
    public List<Image> getImages() { return images; }
    public void setImages(List<Image> images) { this.images = images; }
    public List<OSTag> getDetailTags() { return detailTags; }
    public void setDetailTags(List<OSTag> detailTags) { this.detailTags = detailTags; }
    public List<OSAmenity> getDetailAmenities() { return detailAmenities; }
    public void setDetailAmenities(List<OSAmenity> detailAmenities) { this.detailAmenities = detailAmenities; }
    public List<OSRentType> getDetailRentTypes() { return detailRentTypes; }
    public void setDetailRentTypes(List<OSRentType> detailRentTypes) { this.detailRentTypes = detailRentTypes; }
    public List<OSStatus> getDetailStatuses() { return detailStatuses; }
    public void setDetailStatuses(List<OSStatus> detailStatuses) { this.detailStatuses = detailStatuses; }
    public List<Reservation> getReservations() { return reservations; }
    public void setReservations(List<Reservation> reservations) { this.reservations = reservations; }
    public List<Favorite> getFavorites() { return favorites; }
    public void setFavorites(List<Favorite> favorites) { this.favorites = favorites; }
}