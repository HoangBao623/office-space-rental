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
    private User lessee;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpace;

    @Column(name = "dateMarked", nullable = false)
    private Date dateMarked;

    public Integer getFavoriteID() { return favoriteID; }
    public void setFavoriteID(Integer favoriteID) { this.favoriteID = favoriteID; }
    public User getLessee() { return lessee; }
    public void setLessee(User lessee) { this.lessee = lessee; }
    public OfficeSpace getOfficeSpace() { return officeSpace; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpace = officeSpace; }
    public Date getDateMarked() { return dateMarked; }
    public void setDateMarked(Date dateMarked) { this.dateMarked = dateMarked; }
}