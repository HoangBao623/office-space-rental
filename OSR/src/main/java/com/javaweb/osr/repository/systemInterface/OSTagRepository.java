package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OSRentType;
import com.javaweb.osr.entity.OSTag;
import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OSTagRepository extends JpaRepository<OSTag, Integer> {

    List<OSTag> findAllByOfficeSpaceID(OfficeSpace officeSpace);
}