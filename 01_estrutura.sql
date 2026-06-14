CREATE DATABASE netflix;

USE netflix;

CREATE TABLE Plano (
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100),
    Preco DECIMAL(5,2),
    Resolucao_maxima VARCHAR(100),
    PRIMARY KEY(ID)
);

CREATE TABLE Usuario (
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Data_Cadastro DATE,
    fk_ID_Plano INT,
    PRIMARY KEY(ID),
    FOREIGN KEY (fk_ID_Plano) REFERENCES Plano(ID)
);

CREATE TABLE Perfil (
    ID INT NOT NULL AUTO_INCREMENT,
    Nome_Perfil VARCHAR(100),
    Eh_Crianca BOOLEAN,
    fk_ID_Usuario INT,
    PRIMARY KEY(ID),
    FOREIGN KEY (fk_ID_Usuario) REFERENCES Usuario(ID)
);

CREATE TABLE Titulo (
    ID INT NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(100),
    Sinopse TEXT,
    Ano_Lancamento DATE,
    Tipo VARCHAR(100),
    PRIMARY KEY(ID)
);

CREATE TABLE Historico_Visualizacao (
    ID INT NOT NULL AUTO_INCREMENT,
    Data_Visualizacao DATE,
    Segundos_Assistindo INT,
    fk_ID_Perfil INT,
    fk_ID_Titulo INT,
    PRIMARY KEY(ID),
    FOREIGN KEY (fk_ID_Perfil) REFERENCES Perfil(ID),
    FOREIGN KEY (fk_ID_Titulo) REFERENCES Titulo(ID)
);