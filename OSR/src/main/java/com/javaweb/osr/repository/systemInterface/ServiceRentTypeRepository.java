package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.LessorService;
import com.javaweb.osr.entity.Service;
import com.javaweb.osr.entity.ServiceRentType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ServiceRentTypeRepository extends JpaRepository<ServiceRentType, Integer> {

    List<ServiceRentType> findAllByLessorServiceID(LessorService lessorService);
}