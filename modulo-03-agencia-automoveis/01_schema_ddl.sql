-- ==========================================================
-- AULA 08: BANCO DE DADOS AGÊNCIA DE AUTOMÓVEIS - PARTE 1
-- Criação do Banco e Estrutura das 11 Tabelas (DDL)
-- ==========================================================

CREATE DATABASE IF NOT EXISTS agencia_automoveis;
USE agencia_automoveis;

-- 1. TABELA MARCAS
CREATE TABLE IF NOT EXISTS marcas (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL UNIQUE
);

-- 2. TABELA MODELOS
CREATE TABLE IF NOT EXISTS modelos (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    id_marca INT NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca)
);

-- 3. TABELA FORNECEDORES
CREATE TABLE IF NOT EXISTS fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(120),
    cnpj VARCHAR(20)
);

-- 4. TABELA VEICULOS
CREATE TABLE IF NOT EXISTS veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE,
    chassi VARCHAR(40) UNIQUE,
    ano INT,
    cor VARCHAR(40),
    preco DECIMAL(12,2),
    status ENUM('ESTOQUE', 'VENDIDO', 'RESERVADO') DEFAULT 'ESTOQUE',
    id_modelo INT,
    id_fornecedor INT,
    FOREIGN KEY (id_modelo) REFERENCES modelos(id_modelo),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedor)
);

-- 5. TABELA CLIENTES
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(120),
    endereco TEXT
);

-- 6. TABELA FUNCIONARIOS
CREATE TABLE IF NOT EXISTS funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120),
    cargo VARCHAR(60),
    telefone VARCHAR(20),
    email VARCHAR(120),
    salario DECIMAL(10,2)
);

-- 7. TABELA VENDAS
CREATE TABLE IF NOT EXISTS vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE,
    valor_total DECIMAL(12,2),
    id_cliente INT,
    id_funcionario INT,
    id_veiculo INT UNIQUE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

-- 8. TABELA PAGAMENTOS
CREATE TABLE IF NOT EXISTS pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    tipo ENUM('DINHEIRO', 'PIX', 'CARTAO', 'FINANCIAMENTO'),
    valor DECIMAL(12,2),
    parcelas INT,
    status ENUM('PAGO', 'PENDENTE'),
    FOREIGN KEY (id_venda) REFERENCES vendas(id_venda)
);

-- 9. TABELA ESTOQUE
CREATE TABLE IF NOT EXISTS estoque (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT UNIQUE,
    data_entrada DATE,
    data_saida DATE,
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

-- 10. TABELA MANUTENCOES
CREATE TABLE IF NOT EXISTS manutencoes (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    id_veiculo INT,
    descricao TEXT,
    custo DECIMAL(10,2),
    data_manutencao DATE,
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

-- 11. TABELA USUARIOS DO SISTEMA
CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(50) UNIQUE,
    senha VARCHAR(255),
    nivel ENUM('ADMIN', 'VENDEDOR', 'GERENTE'),
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);