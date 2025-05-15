package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.DetailAmenity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailAmenityRepository extends JpaRepository<DetailAmenity, Integer> {
}