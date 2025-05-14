package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Contract;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContractRepository extends JpaRepository<Contract, Integer> {
}