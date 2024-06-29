package com.example.Clinica.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Funcionario")
public class FuncionarioEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String matricula;
    private Integer tempoExperiencia;

    @ManyToOne
    @JoinColumn(name= "id_Endereco")
    private EnderecoEntity endereco;

}
