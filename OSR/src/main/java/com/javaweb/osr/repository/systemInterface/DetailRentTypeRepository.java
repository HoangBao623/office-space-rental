package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.DetailRentType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailRentTypeRepository extends JpaRepository<DetailRentType, Integer> {
}