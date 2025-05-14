package com.javaweb.osr.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "DetailTag")
public class DetailTag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "detailTagID")
    private Integer detailTagID;

    @ManyToOne
    @JoinColumn(name = "officeSpaceID", nullable = false)
    private OfficeSpace officeSpace;

    @ManyToOne
    @JoinColumn(name = "tagID", nullable = false)
    private Tag tag;

    public Integer getDetailTagID() { return detailTagID; }
    public void setDetailTagID(Integer detailTagID) { this.detailTagID = detailTagID; }
    public OfficeSpace getOfficeSpace() { return officeSpace; }
    public void setOfficeSpace(OfficeSpace officeSpace) { this.officeSpace = officeSpace; }
    public Tag getTag() { return tag; }
    public void setTag(Tag tag) { this.tag = tag; }
}