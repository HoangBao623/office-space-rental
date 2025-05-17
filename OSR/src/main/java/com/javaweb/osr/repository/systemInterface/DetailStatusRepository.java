package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_Status;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailStatusRepository extends JpaRepository<OS_Status, Integer> {
}