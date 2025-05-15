package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.DetailStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailStatusRepository extends JpaRepository<DetailStatus, Integer> {
}