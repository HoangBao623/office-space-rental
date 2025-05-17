package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_RentType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailRentTypeRepository extends JpaRepository<OS_RentType, Integer> {
}