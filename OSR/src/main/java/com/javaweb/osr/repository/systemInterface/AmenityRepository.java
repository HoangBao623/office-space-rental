package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Amenity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AmenityRepository extends JpaRepository<Amenity, Integer> {
}