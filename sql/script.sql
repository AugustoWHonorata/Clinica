CREATE TABLE Endereco (
    ID BIGINT PRIMARY KEY,
    Logradouro VARCHAR(100),
    Estado VARCHAR(100),
    Cidade VARCHAR(100),
    Numero VARCHAR(100),
    CEP VARCHAR(100)
);

CREATE TABLE Funcionario (
    ID BIGINT PRIMARY KEY,
    Matricula VARCHAR(100),
    Tempo_Experiencia INT,
    Endereco_ID BIGINT,
    FOREIGN KEY (Endereco_ID) REFERENCES Endereco(ID)
);

CREATE TABLE Nutricionista (
    ID BIGINT PRIMARY KEY,
    CRN VARCHAR(100),
    Especialidade VARCHAR(100)
);

CREATE TABLE Paciente (
    ID BIGINT PRIMARY KEY,
    Nome VARCHAR(100),
    Data_Nascimento DATE,
    CPF VARCHAR(20),
    Telefone VARCHAR(30),
    Email VARCHAR(100),
    Endereco_ID BIGINT,
    FOREIGN KEY (Endereco_ID) REFERENCES Endereco(ID)
);

CREATE TABLE Consulta (
    ID BIGINT PRIMARY KEY,
    Nutricionista_ID BIGINT,
    Paciente_ID BIGINT,
    DataConsulta DATE,
    Observacoes TEXT,
    FOREIGN KEY (Nutricionista_ID) REFERENCES Nutricionista(ID),
    FOREIGN KEY (Paciente_ID) REFERENCES Paciente(ID)
);

-- Inserir endereços
INSERT INTO Endereco (ID, Logradouro, Estado, Cidade, Numero, CEP) VALUES
(1, 'Rua A', 'SP', 'São Paulo', '123', '01000-000'),
(2, 'Avenida B', 'RJ', 'Rio de Janeiro', '456', '20000-000'),
(3, 'Rua C', 'MG', 'Belo Horizonte', '789', '30000-000');

-- Inserir funcionários
INSERT INTO Funcionario (ID, Matricula, TempoExperiencia, Endereco_ID) VALUES
(1, 'MAT001', 5, 1),
(2, 'MAT002', 3, 2),
(3, 'MAT003', 7, 3);

-- Inserir nutricionistas
INSERT INTO Nutricionista (ID, CRN, Especialidade) VALUES
(1, 'CRN001', 'Nutrição Esportiva'),
(2, 'CRN002', 'Nutrição Clínica'),
(3, 'CRN003', 'Nutrição Infantil');

-- Inserir pacientes
INSERT INTO Paciente (ID, Nome, DataNascimento, CPF, Telefone, Email, Endereco_ID) VALUES
(1, 'João Silva', '1990-05-15', '123.456.789-00', '(11) 98765-4321', 'joao.silva@example.com', 1),
(2, 'Maria Santos', '1985-10-20', '987.654.321-00', '(21) 12345-6789', 'maria.santos@example.com', 2),
(3, 'Pedro Souza', '2000-02-28', '456.789.123-00', '(31) 55555-9999', 'pedro.souza@example.com', 3);

-- Inserir consultas
INSERT INTO Consulta (ID, Nutricionista_ID, Paciente_ID, DataConsulta, Observacoes) VALUES
(1, 1, 1, '2024-06-27', 'Consulta inicial'),
(2, 2, 2, '2024-06-28', 'Acompanhamento mensal'),
(3, 3, 3, '2024-06-29', 'Avaliação nutricional');


-- Atualizar telefone de um nutricionista
UPDATE paciente SET Telefone = '(11) 3333-3333' WHERE ID = 1;

-- Excluir um registro da tabela (exemplo: excluir um paciente)
DELETE FROM consulta WHERE ID = 3;