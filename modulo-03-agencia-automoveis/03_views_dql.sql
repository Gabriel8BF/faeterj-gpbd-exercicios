-- ==========================================================
-- AULA 11: BANCO DE DADOS AGÊNCIA DE AUTOMÓVEIS - PARTE 3
-- Criando Views para Relatórios e Consultas (DDL / DQL)
-- ==========================================================

USE agencia_automoveis;

-- 1) Relatório de Vendas Detalhado
CREATE OR REPLACE VIEW vw_relatorio_vendas AS
SELECT
    v.id_venda,
    v.data_venda,
    c.nome AS cliente,
    f.nome AS vendedor,
    ve.placa,
    ve.preco,
    m.nome AS modelo,
    ma.nome AS marca,
    v.valor_total
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN funcionarios f ON v.id_funcionario = f.id_funcionario
JOIN veiculos ve ON v.id_veiculo = ve.id_veiculo
JOIN modelos m ON ve.id_modelo = m.id_modelo
JOIN marcas ma ON m.id_marca = ma.id_marca;

-- 2) Veículos em Estoque
CREATE OR REPLACE VIEW vw_veiculos_estoque AS
SELECT
    ve.id_veiculo,
    ve.placa,
    ma.nome AS marca,
    m.nome AS modelo,
    ve.ano,
    ve.cor,
    ve.preco
FROM veiculos ve
JOIN modelos m ON ve.id_modelo = m.id_modelo
JOIN marcas ma ON m.id_marca = ma.id_marca
WHERE ve.status = 'ESTOQUE';

-- 3) Total Vendido por Vendedor
CREATE OR REPLACE VIEW vw_total_vendas_vendedor AS
SELECT
    f.nome AS vendedor,
    COUNT(v.id_venda) AS total_vendas,
    SUM(v.valor_total) AS valor_total_vendido
FROM vendas v
JOIN funcionarios f ON v.id_funcionario = f.id_funcionario
GROUP BY f.nome;

-- 4) Faturamento Mensal
CREATE OR REPLACE VIEW vw_faturamento_mensal AS
SELECT
    DATE_FORMAT(data_venda, '%Y-%m') AS mes,
    SUM(valor_total) AS faturamento_total
FROM vendas
GROUP BY mes;

-- 5) Relatório de Manutenções
CREATE OR REPLACE VIEW vw_relatorio_manutencoes AS
SELECT
    ma.nome AS marca,
    mo.nome AS modelo,
    ve.placa,
    m.descricao,
    m.custo,
    m.data_manutencao
FROM manutencoes m
JOIN veiculos ve ON m.id_veiculo = ve.id_veiculo
JOIN modelos mo ON ve.id_modelo = mo.id_modelo
JOIN marcas ma ON mo.id_marca = ma.id_marca;

-- ==========================================================
-- USO DAS VIEWS (CONSULTAS DE VERIFICAÇÃO)
-- ==========================================================
SELECT * FROM vw_relatorio_vendas;
SELECT * FROM vw_veiculos_estoque;
SELECT * FROM vw_total_vendas_vendedor;
SELECT * FROM vw_faturamento_mensal;
SELECT * FROM vw_relatorio_manutencoes;