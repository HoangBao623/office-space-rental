package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OS_Tag")
public class OS_Tag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oS_TagID")
    private Integer oS_TagID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "tagID", nullable = false)
    private Tag tagID;

    public Integer getDetailTagID() { return oS_TagID; }
    public void setDetailTagID(Integer oS_TagID) { this.oS_TagID = oS_TagID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public Tag getTag() { return tagID; }
    public void setTag(Tag tag) { this.tagID = tag; }
}