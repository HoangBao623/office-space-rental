package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OfficeSpace;
import com.javaweb.osr.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OfficeSpaceRepository extends JpaRepository<OfficeSpace, Integer> {

    List<OfficeSpace> findAllByLessorID(User lessorID);
}