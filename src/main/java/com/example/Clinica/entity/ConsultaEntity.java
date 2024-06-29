package com.example.Clinica.entity;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "Consulta")
public class ConsultaEntity {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate dataConsulta;
    private String observacoes;

    @ManyToOne
    @JoinColumn(name= "id_Nutricionista")
    private NutricionistaEntity nutricionista;
    @ManyToOne
    @JoinColumn(name= "id_Paciente")
    private PacienteEntity paciente;

}
