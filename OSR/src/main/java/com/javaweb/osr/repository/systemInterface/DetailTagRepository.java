package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.DetailTag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailTagRepository extends JpaRepository<DetailTag, Integer> {
}