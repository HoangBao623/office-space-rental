package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OS_Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailTagRepository extends JpaRepository<OS_Tag, Integer> {
}