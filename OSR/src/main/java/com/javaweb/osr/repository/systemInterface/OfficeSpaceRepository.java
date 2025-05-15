package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OfficeSpace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OfficeSpaceRepository extends JpaRepository<OfficeSpace, Integer> {
}