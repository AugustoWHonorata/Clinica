package com.example.Clinica.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "nutricionista")
public class NutricionistaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String crn;
    private Integer especialidade;

}
