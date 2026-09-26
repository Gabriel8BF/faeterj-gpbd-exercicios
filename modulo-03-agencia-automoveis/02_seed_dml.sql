-- ==========================================================
-- AULA 10: BANCO DE DADOS AGÊNCIA DE AUTOMÓVEIS - PARTE 2
-- Inserindo Dados de Exemplo nas 11 Tabelas (DML)
-- ==========================================================

USE agencia_automoveis;

-- 1. MARCAS
INSERT INTO marcas (nome) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet');

-- 2. MODELOS
INSERT INTO modelos (nome, id_marca) VALUES
('Corolla', 1),
('Hilux', 1),
('Civic', 2),
('HR-V', 2),
('Ranger', 3),
('Onix', 4);

-- 3. FORNECEDORES
INSERT INTO fornecedores (nome, telefone, email, cnpj) VALUES
('Auto Distribuidora Brasil', '11999990001', 'contato@adb.com', '12.345.678/0001-90'),
('Veículos Premium LTDA', '11999990002', 'vendas@premium.com', '98.765.432/0001-10');

-- 4. VEICULOS
INSERT INTO veiculos (placa, chassi, ano, cor, preco, status, id_modelo, id_fornecedor) VALUES
('ABC1234', 'CHASSI001', 2022, 'Preto', 95000.00, 'VENDIDO', 1, 1),
('DEF5678', 'CHASSI002', 2023, 'Branco', 120000.00, 'ESTOQUE', 2, 2),
('GHI9012', 'CHASSI003', 2021, 'Prata', 85000.00, 'VENDIDO', 3, 1),
('JKL3456', 'CHASSI004', 2023, 'Azul', 78000.00, 'ESTOQUE', 6, 2);

-- 5. CLIENTES
INSERT INTO clientes (nome, cpf, telefone, email, endereco) VALUES
('Carlos Silva', '111.111.111-11', '11988887777', 'carlos@email.com', 'Rua A, 100'),
('Mariana Souza', '222.222.222-22', '11977776666', 'mariana@email.com', 'Rua B, 200');

-- 6. FUNCIONARIOS
INSERT INTO funcionarios (nome, cargo, telefone, email, salario) VALUES
('João Mendes', 'Vendedor', '11966665555', 'joao@agencia.com', 3000.00),
('Fernanda Lima', 'Gerente', '11955554444', 'fernanda@agencia.com', 8000.00);

-- 7. VENDAS
INSERT INTO vendas (data_venda, valor_total, id_cliente, id_funcionario, id_veiculo) VALUES
('2025-01-10', 95000.00, 1, 1, 1),
('2025-02-05', 85000.00, 2, 1, 3);

-- 8. PAGAMENTOS
INSERT INTO pagamentos (id_venda, tipo, valor, parcelas, status) VALUES
(1, 'FINANCIAMENTO', 95000.00, 48, 'PAGO'),
(2, 'PIX', 85000.00, 1, 'PAGO');

-- 9. ESTOQUE
INSERT INTO estoque (id_veiculo, data_entrada, data_saida) VALUES
(1, '2024-12-01', '2025-01-10'),
(2, '2025-01-15', NULL),
(3, '2024-11-20', '2025-02-05'),
(4, '2025-02-01', NULL);

-- 10. MANUTENCOES
INSERT INTO manutencoes (id_veiculo, descricao, custo, data_manutencao) VALUES
(1, 'Troca de óleo e revisão geral', 1200.00, '2024-12-10'),
(3, 'Alinhamento e balanceamento', 600.00, '2024-12-20');

-- 11. USUARIOS
INSERT INTO usuarios (login, senha, nivel, id_funcionario) VALUES
('admin', '123456', 'ADMIN', 2),
('joao', '123456', 'VENDEDOR', 1);