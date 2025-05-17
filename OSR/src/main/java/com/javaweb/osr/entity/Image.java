package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Image")
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "imageID")
    private Integer imageID;

    @Column(name = "imageName", nullable = false, unique = true, length = 50)
    private String imageName;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    public Integer getImageID() { return imageID; }
    public void setImageID(Integer imageID) { this.imageID = imageID; }
    public String getImageName() { return imageName; }
    public void setImageName(String imageName) { this.imageName = imageName; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
}