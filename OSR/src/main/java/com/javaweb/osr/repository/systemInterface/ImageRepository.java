package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Image;
import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImageRepository extends JpaRepository<Image, Integer> {

    List<Image> findAllByOfficeSpaceID(OfficeSpace officeSpace);
}