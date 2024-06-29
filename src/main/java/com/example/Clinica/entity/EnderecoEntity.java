package com.example.Clinica.entity;

import jakarta.persistence.*;

@Entity
@Table(name= "Endereco" )
public class EnderecoEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String longradouro;
    private String estado;
    private String cidade;
    private String numero;
    private String cep;


}
