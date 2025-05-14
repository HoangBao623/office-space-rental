package com.javaweb.osr.repository.systemInterface;

import com.javaweb.osr.entity.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Integer> {
}