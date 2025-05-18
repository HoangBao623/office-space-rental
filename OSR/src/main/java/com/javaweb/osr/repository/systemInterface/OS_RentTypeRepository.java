package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_Amenity;
import com.javaweb.osr.entity.OS_RentType;
import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OS_RentTypeRepository extends JpaRepository<OS_RentType, Integer> {

    List<OS_RentType> findAllByOfficeSpaceID(OfficeSpace officeSpace);
}