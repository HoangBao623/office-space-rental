package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_Amenity;
import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OS_AmenityRepository extends JpaRepository<OS_Amenity, Integer> {

    List<OS_Amenity>  findAllByOfficeSpaceID(OfficeSpace officeSpace);
}