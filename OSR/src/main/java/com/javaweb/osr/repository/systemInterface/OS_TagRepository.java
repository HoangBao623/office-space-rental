package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_RentType;
import com.javaweb.osr.entity.OS_Tag;
import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OS_TagRepository extends JpaRepository<OS_Tag, Integer> {

    List<OS_Tag> findAllByOfficeSpaceID(OfficeSpace officeSpace);
}