package com.example.demo.domain.model.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Setter
@Getter
@Entity
public class Post {
    @Id
    @GeneratedValue
    int id;

    String title;

    String subtitle;

    @Column(length = 1000000000)
    String content;

    Date regDate;

}