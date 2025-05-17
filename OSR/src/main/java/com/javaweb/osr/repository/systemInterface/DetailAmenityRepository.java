package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_Amenity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailAmenityRepository extends JpaRepository<OS_Amenity, Integer> {
}