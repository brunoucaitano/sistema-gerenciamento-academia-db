
CREATE TABLE Aluno (
    CPF_Aluno VARCHAR(11) PRIMARY KEY, -- [cite: 566]
    Nome VARCHAR(300) NOT NULL,
    DataNascimento DATE,
    Sexo VARCHAR(20),
    Telefone VARCHAR(20),
    Email VARCHAR(150) UNIQUE NOT NULL,
    Endereco TEXT,
    DataCadastro DATE DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(20),
    Nivel VARCHAR(50) -- [cite: 567]
);

CREATE TABLE Instrutor (
    CPF_Instrutor VARCHAR(11) PRIMARY KEY, -- [cite: 569]
    CREF VARCHAR(20) UNIQUE NOT NULL,
    Nome VARCHAR(300) NOT NULL,
    Especialidade VARCHAR(100),
    Status VARCHAR(20) -- [cite: 570]
);

CREATE TABLE Plano (
    Nome VARCHAR(100),
    Tipo VARCHAR(50),
    Duracao INT,
    Descricao TEXT,
    ValorMensal NUMERIC(10,2),
    Status VARCHAR(20),
    PRIMARY KEY (Nome, Tipo, Duracao) -- Chave composta [cite: 572]
);

CREATE TABLE Equipamento (
    NumeroSerie VARCHAR(100) PRIMARY KEY, -- [cite: 583]
    Nome VARCHAR(200) NOT NULL,
    Status VARCHAR(50),
    VidaUtil INT -- [cite: 584]
);

CREATE TABLE AvaliacaoFisica (
    CPF_Aluno VARCHAR(11) REFERENCES Aluno(CPF_Aluno),
    DataAvaliacao DATE,
    CPF_Instrutor VARCHAR(11) REFERENCES Instrutor(CPF_Instrutor),
    Peso NUMERIC(5,2),
    Altura NUMERIC(3,2),
    IMC NUMERIC(4,2),
    PRIMARY KEY (CPF_Aluno, DataAvaliacao) -- [cite: 589, 590]
);