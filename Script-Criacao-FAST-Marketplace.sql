-- FAST_Marketplace.Data_Definition

CREATE DATABASE FAST_Marketplace;
USE FAST_Marketplace;

-- FAST_Marketplace.Categoria_Produto definition

CREATE TABLE `Categoria_Prod` (
  `ID_categoria` int NOT NULL AUTO_INCREMENT,
  `Nome_categoria` varchar(120) NOT NULL,
  PRIMARY KEY (`ID_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Produto definition

CREATE TABLE `Produto` (
  `ID_produto` int NOT NULL AUTO_INCREMENT,
  `Nome_produto` varchar(120) NOT NULL,
  `Valor` float NOT NULL,
  `Marca` varchar (120) NOT null,
  `Descricao` varchar (120) not null
  PRIMARY KEY (`ID_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Loja definition

CREATE TABLE `Loja` (
  `ID_loja` int NOT NULL AUTO_INCREMENT,
  `Nome_loja` varchar(120) NOT NULL,
  `Rua` varchar(120) NOT NULL,
  `Bairro` varchar(120) NOT NULL,
  `Cidade` varchar(120) NOT NULL,
  `Numero` int NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `Complemento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_loja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Pessoa definition

CREATE TABLE `Pessoa` (
  `CPF` varchar(11) NOT NULL,
  `Nome` varchar(120) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Salario` float NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Departamento definition

CREATE TABLE `Departamento` (
  `ID_departamento` int NOT NULL AUTO_INCREMENT,
  `Nome_departamento` varchar(120) NOT NULL,
  `Descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Formacao definition

CREATE TABLE `Formacao` (
  `ID_formacao` int NOT NULL AUTO_INCREMENT,
  `Grau` varchar(80) NOT NULL,
  `Curso` varchar(120) NOT NULL,
  `Instituicao` varchar(120) NOT NULL,
  PRIMARY KEY (`ID_formacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Funcao definition

CREATE TABLE `Funcao` (
  `ID_funcao` int NOT NULL AUTO_INCREMENT,
  `Nome_funcao` varchar(120) NOT NULL,
  `Descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID_funcao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Funcao_Departamento definition

CREATE TABLE `Funcao_Departamento` (
  `ID_funcao` int NOT NULL,
  `ID_departamento` int NOT NULL,
  PRIMARY KEY (`ID_funcao`,`ID_departamento`),
  KEY `ID_funcao` (`ID_funcao`),
  KEY `ID_departamento` (`ID_departamento`),
  CONSTRAINT `Funcao_Departamento_ibfk_1` FOREIGN KEY (`ID_funcao`) REFERENCES `Funcao` (`ID_funcao`),
  CONSTRAINT `Funcao_Departamento_ibfk_2` FOREIGN KEY (`ID_departamento`) REFERENCES `Departamento` (`ID_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- FAST_Marketplace.Pessoa_Departamento definition

CREATE TABLE `Pessoa_Departamento` (
  `CPF_pessoa` varchar(11) NOT NULL,
  `ID_departamento` int NOT NULL,
  PRIMARY KEY (`CPF_pessoa`, `ID_departamento`),
  KEY `CPF_pessoa` (`CPF_pessoa`),
  KEY `ID_departamento` (`ID_departamento`),
  CONSTRAINT `Pessoa_Departamento_ibfk_1` FOREIGN KEY (`CPF_pessoa`) REFERENCES `Pessoa` (`CPF`),
  CONSTRAINT `Pessoa_Departamento_ibfk_2` FOREIGN KEY (`ID_departamento`) REFERENCES `Departamento` (`ID_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Pessoa_Funcao definition

CREATE TABLE `Pessoa_Funcao` (
  `CPF_pessoa` varchar(11) NOT NULL,
  `ID_funcao` int NOT NULL,
  PRIMARY KEY (`CPF_pessoa`,`ID_funcao`),
  KEY `CPF_pessoa` (`CPF_pessoa`),
  KEY `ID_funcao` (`ID_funcao`),
  CONSTRAINT `Pessoa_Funcao_ibfk_1` FOREIGN KEY (`CPF_pessoa`) REFERENCES `Pessoa` (`CPF`),
  CONSTRAINT `Pessoa_Funcao_ibfk_2` FOREIGN KEY (`ID_funcao`) REFERENCES `Funcao` (`ID_funcao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Pessoa_Formacao definition

CREATE TABLE `Pessoa_Formacao` (
  `CPF_pessoa` varchar (11) NOT NULL,
  `ID_formacao` int NOT NULL,
  PRIMARY KEY (`CPF_pessoa`,`ID_formacao`),
  KEY `CPF_pessoa` (`CPF_pessoa`),
  KEY `ID_formacao` (`ID_formacao`),
  CONSTRAINT `Pessoa_Formacao_ibfk_1` FOREIGN KEY (`CPF_pessoa`) REFERENCES `Pessoa` (`CPF`),
  CONSTRAINT `Pessoa_Formacao_ibfk_2` FOREIGN KEY (`ID_formacao`) REFERENCES `Formacao` (`ID_formacao`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Pessoa_Loja definition

CREATE TABLE `Pessoa_Loja` (
  `CPF_pessoa` varchar(11) NOT NULL,
  `ID_loja` int NOT NULL,
  PRIMARY KEY (`CPF_pessoa`,`ID_loja`),
  KEY `CPF_pessoa` (`CPF_pessoa`),
  KEY `ID_loja` (`ID_loja`),
  CONSTRAINT `Pessoa_Loja_ibfk_1` FOREIGN KEY (`CPF_pessoa`) REFERENCES `Pessoa` (`CPF`),
  CONSTRAINT `Pessoa_Loja_ibfk_2` FOREIGN KEY (`ID_loja`) REFERENCES `Loja` (`ID_loja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Produto_Loja definition

CREATE TABLE `Produto_Loja` (
  `ID_produto` int NOT NULL,
  `ID_loja` int NOT NULL,
  PRIMARY KEY (`ID_produto`,`ID_loja`),
  KEY `ID_produto` (`ID_produto`),
  KEY `ID_loja` (`ID_loja`),
  CONSTRAINT `Produto_Loja_ibfk_1` FOREIGN KEY (`ID_produto`) REFERENCES `Produto` (`ID_produto`),
  CONSTRAINT `Produto_Loja_ibfk_2` FOREIGN KEY (`ID_loja`) REFERENCES `Loja` (`ID_loja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Produto_Categoria_Produto definition

CREATE TABLE `Produto_Categoria_Produto` (
  `ID_produto` int NOT NULL,
  `ID_categoria` int NOT NULL,
  PRIMARY KEY (`ID_produto`,`ID_categoria`),
  KEY `ID_produto` (`ID_produto`),
  KEY `ID_categoria` (`ID_categoria`),
  CONSTRAINT `Produto_Categoria_Produto_ibfk_1` FOREIGN KEY (`ID_produto`) REFERENCES `Produto` (`ID_produto`),
  CONSTRAINT `Produto_Categoria_Produto_ibfk_2` FOREIGN KEY (`ID_categoria`) REFERENCES `Categoria_Prod` (`ID_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- FAST_Marketplace.Loja_Departamento definition

CREATE TABLE `Loja_Departameto` (
`ID_loja` int NOT NULL,
`ID_Departamento` int NOT NULL,
 PRIMARY KEY (`ID_loja`,`ID_Departamento`),
 KEY `ID_loja` (`ID_loja`),
 KEY `ID_Departamento` (`ID_Departamento`),
 CONSTRAINT `Loja_Departamento_ibfk_1` FOREIGN KEY (`ID_loja`) REFERENCES `Loja` (`ID_loja`),
 CONSTRAINT `Loja_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `Departamento` (`ID_Departamento`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


