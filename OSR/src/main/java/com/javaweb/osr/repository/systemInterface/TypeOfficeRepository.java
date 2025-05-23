package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.OfficeSpace;
import com.javaweb.osr.entity.TypeOffice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TypeOfficeRepository extends JpaRepository<TypeOffice, Integer> {
}