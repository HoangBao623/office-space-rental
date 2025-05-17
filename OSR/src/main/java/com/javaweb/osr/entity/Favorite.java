package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Favorite")
public class Favorite {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "favoriteID")
    private Integer favoriteID;

    @ManyToOne
    @JoinColumn(name = "lesseeID", nullable = false)
    private User lesseeID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @Column(name = "dateMarked", nullable = false)
    private Date dateMarked;

    public Integer getFavoriteID() { return favoriteID; }
    public void setFavoriteID(Integer favoriteID) { this.favoriteID = favoriteID; }
    public User getLessee() { return lesseeID; }
    public void setLessee(User lessee) { this.lesseeID = lessee; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public Date getDateMarked() { return dateMarked; }
    public void setDateMarked(Date dateMarked) { this.dateMarked = dateMarked; }
}