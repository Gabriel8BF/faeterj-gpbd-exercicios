-- ==========================================================
-- AULA 04: PRINCIPAIS COMANDOS SQL - PARTE 1
-- Exemplo prático: Banco CSN e Tabela Clientes
-- ==========================================================

-- 1. CREATE DATABASE: Criação do banco de dados (DDL)
CREATE DATABASE IF NOT EXISTS csn;

-- 2. USE: Selecionando o banco de dados para trabalhar (DDL)
USE csn;

-- 3. CREATE TABLE: Criação da tabela clientes com chave primária (DDL)
CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE
);

-- 4. INSERT INTO: Adicionando registro na tabela (DML)
INSERT INTO clientes (id, nome, email, data_nascimento)
VALUES (1, 'João Silva', 'joao@email.com', '1990-05-12');

-- Consulta de verificação (DQL)
SELECT * FROM clientes;