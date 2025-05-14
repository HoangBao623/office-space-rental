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
    private Building building;

    @ManyToOne
    @JoinColumn(name = "lessorID", nullable = false)
    private User lessor;

    @ManyToOne
    @JoinColumn(name = "typeOfficeID", nullable = false)
    private TypeOffice typeOffice;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<Image> images;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<DetailTag> detailTags;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<DetailAmenity> detailAmenities;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<DetailRentType> detailRentTypes;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<DetailStatus> detailStatuses;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<Reservation> reservations;

    @OneToMany(mappedBy = "officeSpaceID")
    private List<Contract> contracts;

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
    public Building getBuilding() { return building; }
    public void setBuilding(Building building) { this.building = building; }
    public User getLessor() { return lessor; }
    public void setLessor(User lessor) { this.lessor = lessor; }
    public TypeOffice getTypeOffice() { return typeOffice; }
    public void setTypeOffice(TypeOffice typeOffice) { this.typeOffice = typeOffice; }
    public List<Image> getImages() { return images; }
    public void setImages(List<Image> images) { this.images = images; }
    public List<DetailTag> getDetailTags() { return detailTags; }
    public void setDetailTags(List<DetailTag> detailTags) { this.detailTags = detailTags; }
    public List<DetailAmenity> getDetailAmenities() { return detailAmenities; }
    public void setDetailAmenities(List<DetailAmenity> detailAmenities) { this.detailAmenities = detailAmenities; }
    public List<DetailRentType> getDetailRentTypes() { return detailRentTypes; }
    public void setDetailRentTypes(List<DetailRentType> detailRentTypes) { this.detailRentTypes = detailRentTypes; }
    public List<DetailStatus> getDetailStatuses() { return detailStatuses; }
    public void setDetailStatuses(List<DetailStatus> detailStatuses) { this.detailStatuses = detailStatuses; }
    public List<Reservation> getReservations() { return reservations; }
    public void setReservations(List<Reservation> reservations) { this.reservations = reservations; }
    public List<Contract> getContracts() { return contracts; }
    public void setContracts(List<Contract> contracts) { this.contracts = contracts; }
    public List<Favorite> getFavorites() { return favorites; }
    public void setFavorites(List<Favorite> favorites) { this.favorites = favorites; }
}