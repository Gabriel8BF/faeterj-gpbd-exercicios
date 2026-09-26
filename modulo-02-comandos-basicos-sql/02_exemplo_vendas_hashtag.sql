-- ==========================================================
-- AULA 05: PRINCIPAIS COMANDOS SQL - PARTE 2
-- Os 10 Comandos Básicos em SQL (Banco Hashtag / Vendas)
-- ==========================================================

-- 1. Criação de Banco de Dados: CREATE DATABASE (DDL)
CREATE DATABASE IF NOT EXISTS hashtag;

-- 2. Seleção do Banco de Dados: USE (DDL)
USE hashtag;

-- 3. Criação de tabelas no Banco selecionado: CREATE TABLE (DDL)
CREATE TABLE IF NOT EXISTS Vendas (
    ID_Venda INT PRIMARY KEY,
    Curso VARCHAR(100),
    Aluno VARCHAR(100),
    Estado VARCHAR(100),
    Valor DECIMAL(10, 2)
);

-- 4. Incluir dados na tabela: INSERT INTO (DML)
INSERT INTO Vendas (ID_Venda, Curso, Aluno, Estado, Valor)
VALUES
    (1, 'Excel', 'João', 'SP', 100.00),
    (2, 'VBA', 'Lucas', 'RJ', 50.00),
    (3, 'Excel', 'Alice', 'SP', 100.00),
    (4, 'Excel', 'Pedro', 'PE', 100.00),
    (5, 'VBA', 'Amanda', 'BA', 50.00),
    (6, 'Power BI', 'Rita', 'RS', 80.00),
    (7, 'Excel', 'Julia', 'RJ', 100.00),
    (8, 'Power BI', 'Caio', 'SP', 80.00),
    (9, 'Power BI', 'Lara', 'MG', 80.00),
    (10, 'Excel', 'Rogério', 'AC', 100.00);

-- 5. Selecionar dados de uma tabela: SELECT (DQL)
SELECT * FROM Vendas;
SELECT Aluno, Curso, Valor FROM Vendas;

-- 6. Ordenar dados em uma tabela: ORDER BY
SELECT * FROM Vendas
ORDER BY Aluno;

-- 7. Filtrar dados em uma tabela: WHERE
SELECT * FROM Vendas
WHERE Estado = 'RJ';

-- 8. Alteração de valores dentro da tabela: UPDATE (DML)
UPDATE Vendas
SET Valor = 150.00
WHERE Curso = 'VBA';

-- 9. Exclusão de linhas específicas da tabela: DELETE (DML)
DELETE FROM Vendas
WHERE ID_Venda = 10;

-- Verificando como ficou a tabela após o UPDATE e o DELETE
SELECT * FROM Vendas;

-- 10. Exclusão de TODOS os dados da tabela (mantendo a estrutura): TRUNCATE TABLE
-- (Descomente a linha abaixo caso queira esvaziar a tabela completamente)
-- TRUNCATE TABLE Vendas;