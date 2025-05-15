package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.DetailRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailRoleRepository extends JpaRepository<DetailRole, Integer> {
}