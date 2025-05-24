package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "OSTag")
public class OSTag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oSTagID")
    private Integer oSTagID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpaceID;

    @ManyToOne
    @JoinColumn(name = "tagID", nullable = false)
    private Tag tagID;

    public Integer getDetailTagID() { return oSTagID; }
    public void setDetailTagID(Integer oSTagID) { this.oSTagID = oSTagID; }
    public OfficeSpace getOfficeSpace() { return officeSpaceID; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpaceID = officeSpace; }
    public Tag getTag() { return tagID; }
    public void setTag(Tag tag) { this.tagID = tag; }
}