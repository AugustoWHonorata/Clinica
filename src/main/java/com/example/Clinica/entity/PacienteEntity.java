package com.example.Clinica.entity;

import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
@Table(name = "paciente")
public class PacienteEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private LocalDate dataNascimento;
    private String cpf;
    private String telefone;
    private String email;

    @ManyToOne
    @JoinColumn(name= "id_Endereco")
    private EnderecoEntity endereco;

}
