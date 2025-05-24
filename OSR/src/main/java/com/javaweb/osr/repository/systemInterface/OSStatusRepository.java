package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OSStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OSStatusRepository extends JpaRepository<OSStatus, Integer> {
}