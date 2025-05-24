package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Amenity;
import com.javaweb.osr.entity.Service;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Integer> {

    Service findByServiceName(String serviceName);
}