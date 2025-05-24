package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Amenity;
import com.javaweb.osr.entity.LessorService;
import com.javaweb.osr.entity.Service;
import com.javaweb.osr.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LessorServiceRepository extends JpaRepository<LessorService, Integer> {

    List<LessorService> findAllByServiceID(Service service);

    List<LessorService> findAllByLessorID(User lessorID);
}