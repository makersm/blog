package com.example.demo.infrastructure.dao;

import com.example.demo.domain.model.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostDao extends JpaRepository<Post, Integer> {
}
