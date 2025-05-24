package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OSAmenity;
import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OSAmenityRepository extends JpaRepository<OSAmenity, Integer> {

    List<OSAmenity>  findAllByOfficeSpaceID(OfficeSpace officeSpace);
}