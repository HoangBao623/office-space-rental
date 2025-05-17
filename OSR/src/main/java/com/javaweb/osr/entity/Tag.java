package com.javaweb.osr.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "Tag")
public class Tag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tagID")
    private Integer tagID;

    @Column(name = "tagName", nullable = false, unique = true, length = 50)
    private String tagName;

    @OneToMany(mappedBy = "tagID")
    private List<OS_Tag> detailTags;

    public Integer getTagID() { return tagID; }
    public void setTagID(Integer tagID) { this.tagID = tagID; }
    public String getTagName() { return tagName; }
    public void setTagName(String tagName) { this.tagName = tagName; }
    public List<OS_Tag> getDetailTags() { return detailTags; }
    public void setDetailTags(List<OS_Tag> detailTags) { this.detailTags = detailTags; }
}