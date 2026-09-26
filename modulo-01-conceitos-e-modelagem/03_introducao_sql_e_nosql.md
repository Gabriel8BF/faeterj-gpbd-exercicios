# 📘 Aulas 03, 04 e 06 — Fundamentos de SQL e Comparativo SQL vs. NoSQL

Resumo conceitual sobre a linguagem SQL, organização de seus subconjuntos e diferenças arquiteturais entre bancos relacionais (SQL) e não relacionais (NoSQL).

---

## 1. O que é SQL e RDBMS?

* **SQL (*Structured Query Language*):** Linguagem de consulta estruturada padronizada pela ANSI (1986) e ISO (1987) para acessar, definir e manipular bancos de dados relacionais.
* **RDBMS (*Relational Database Management System*):** Sistema de Gerenciamento de Banco de Dados Relacional (como MySQL, SQL Server, PostgreSQL, Oracle e DB2). Armazena os dados em objetos chamados **tabelas**, compostas por **colunas** (atributos/campos) e **linhas** (registros).

---

## 2. Organização dos Subconjuntos da SQL

A linguagem SQL é dividida em 5 subconjuntos de acordo com a finalidade dos comandos:

| Sigla | Nome Completo | Finalidade | Principais Comandos |
| :--- | :--- | :--- | :--- |
| **DQL** | *Data Query Language* | Consulta e recuperação de dados armazenados | `SELECT`, `SELECT DISTINCT` |
| **DML** | *Data Manipulation Language* | Manipulação direta dos registros dentro das tabelas | `INSERT INTO`, `UPDATE`, `DELETE` |
| **DDL** | *Data Definition Language* | Criação, alteração e exclusão de estruturas (bancos, tabelas, views, índices) | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `USE` |
| **DCL** | *Data Control Language* | Controle de segurança, permissões e privilégios de acesso | `GRANT`, `REVOKE` |
| **DTL / TCL** | *Data Transaction Language* | Gerenciamento de transações para garantir integridade das operações | `BEGIN`, `COMMIT`, `ROLLBACK` |

---

## 3. Diferenças entre SQL (Relacional) e NoSQL (Não Relacional)

A escolha entre um banco relacional e um não relacional depende diretamente das necessidades de estrutura, consistência e escalabilidade da aplicação:

| Critério | SQL (Relacional) | NoSQL (Não Relacional) |
| :--- | :--- | :--- |
| **Modelo de Armazenamento** | Tabelas relacionais (linhas e colunas) interligadas por Chaves Primárias (PK) e Estrangeiras (FK) | Documentos, Chave-Valor, Colunas largas ou Grafos |
| **Esquema (*Schema*)** | Rígido e pré-definido (exige dados altamente estruturados) | Flexível e dinâmico (ideal para dados não estruturados ou semiestruturados) |
| **Escalabilidade** | Predominantemente vertical (pode ter restrições de expansão devido à estrutura rígida) | Altamente escalável horizontalmente (distribuído em múltiplos servidores/clusters) |
| **Consistência vs. Disponibilidade** | Foco em alta consistência e integridade nas transações | Foco em alta disponibilidade, performance em grandes volumes e tolerância a falhas |
| **Casos de Uso Ideais** | Sistemas que exigem transações precisas e consistentes (ex: **sistemas bancários, financeiros e de reservas**) | Aplicações com grandes volumes de dados não estruturados e alta demanda de escala (ex: **redes sociais e e-commerce**) |