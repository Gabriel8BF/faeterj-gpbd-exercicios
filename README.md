# 🎓 Exercícios de Gestão de Projetos de Banco de Dados — FAETERJ

Este repositório contém as atividades práticas, resumos conceituais e scripts SQL desenvolvidos ao longo das aulas da disciplina de **Gestão de Projetos de Banco de Dados** da **FAETERJ**.

O objetivo deste espaço é centralizar os estudos teóricos de modelagem e a prática de implementação em bancos de dados relacionais, cobrindo desde os fundamentos de **DDL, DML e DQL** até a estruturação de múltiplos relacionamentos com chaves estrangeiras, agregações (`JOIN`, `GROUP BY`) e criação de relatórios com **Views**.

---

## 🛠️ Tecnologias e Ferramentas

* **Linguagem:** SQL (DDL, DML, DQL, DCL e DTL)
* **SGBD:** MySQL / MariaDB (XAMPP)
* **Ambiente de Desenvolvimento:** VS Code (Database Client) / MySQL Workbench
* **Modelagem:** Modelo Entidade-Relacionamento (MER / DER)

---

## 📂 Estrutura de Conteúdos

O repositório está organizado em pastas temáticas que acompanham a evolução das aulas da disciplina:

```text
faeterj-gpbd-exercicios/
├── modulo-01-conceitos-e-modelagem/          # Resumos teóricos (Aulas 1, 2, 3 e 6)
│   ├── 01_modelagem_de_dados.md              # Conceitos e níveis de modelagem (Conceitual, Lógica e Física)
│   ├── 02_redundancia_e_sgbd.md              # Redundância controlada vs. não controlada, SGBD e esquemas
│   └── 03_introducao_sql_e_nosql.md          # Fundamentos de RDBMS, comandos SQL e comparativo SQL vs. NoSQL
│
├── modulo-02-comandos-basicos-sql/           # Prática dos 10 comandos essenciais em SQL (Aulas 4 e 5)
│   ├── 01_exemplo_clientes.sql               # Criação do banco csn, tabela clientes e inserção inicial
│   └── 02_exemplo_vendas_hashtag.sql         # Prática completa: CREATE, INSERT, SELECT, WHERE, ORDER BY, UPDATE, DELETE e TRUNCATE
│
├── modulo-03-agencia-automoveis/             # Projeto prático de aula com 11 tabelas relacionais (Aulas 8, 10 e 11)
│   ├── 01_schema_ddl.sql                     # Parte 1: Criação do banco agencia_automoveis e 11 tabelas (PK, FK, ENUM, UNIQUE)
│   ├── 02_seed_dml.sql                       # Parte 2: Inserção de registros em lote respeitando integridade referencial
│   └── 03_views_dql.sql                      # Parte 3: Criação de 5 Views para relatórios com JOIN, COUNT, SUM e GROUP BY
│
└── README.md                                 # Documentação geral e guia de execução do repositório
```

---

## 🚀 Como Executar os Exercícios

Para testar qualquer um dos scripts `.sql` localmente, siga o **Passo 1** para iniciar o servidor e, em seguida, escolha **apenas uma** das alternativas no **Passo 2** (**Opção A**, **Opção B** ou **Opção C**).

### Passo 1: Iniciar o Servidor Local (Pré-requisito Obrigatório)

1. Abra o **XAMPP Control Panel** (ou o gerenciador de serviços do **MySQL Server**).
2. Localize o módulo **MySQL** e clique no botão **Start**.
3. Aguarde até que o serviço fique ativo (verde) na porta padrão **`3306`** (`Host: 127.0.0.1` | `User: root`).

---

### Passo 2: Executar os Scripts SQL (Escolha a Opção A, B ou C)

#### Opção A — Pela Extensão do VS Code

1. No VS Code, instale a extensão **MySQL (Database Client)**.
2. Clique no ícone de Banco de Dados na barra lateral esquerda e conecte-se à instância local (`Host: 127.0.0.1` | `Port: 3306` | `Username: root`).
3. Volte ao **Explorador de Arquivos** do VS Code (`Ctrl + Shift + E`), abra a pasta do exercício desejado, selecione todo o conteúdo do arquivo `.sql` com **`Ctrl + A`** e clique no botão **Run SQL (`▷`)** no canto superior direito do editor.
   * *Nota:* Em exercícios divididos em múltiplos arquivos (como o `modulo-03-agencia-automoveis`), execute-os sempre na ordem numérica (`01`, `02` e `03`).

#### Opção B — Pelo MySQL Workbench

1. Abra o **MySQL Workbench** e conecte-se à sua instância local (`Root Localhost` — `127.0.0.1:3306`).
2. No menu superior, vá em **`File > Open SQL Script...`** e abra os arquivos `.sql` do módulo desejado em abas separadas.
3. Clique no ícone do **Raio (`⚡`)** na barra superior para executar cada script na ordem numérica.

#### Opção C — Via Terminal (Linha de Comando)

Caso prefira executar os scripts diretamente pelo terminal (exemplo com o Módulo 3):

```bash
# 1. Criar a estrutura do banco e tabelas (DDL)
mysql -u root -p < modulo-03-agencia-automoveis/01_schema_ddl.sql

# 2. Popular as tabelas com dados de exemplo (DML)
mysql -u root -p < modulo-03-agencia-automoveis/02_seed_dml.sql

# 3. Criar as Views e executar os relatórios (DQL)
mysql -u root -p < modulo-03-agencia-automoveis/03_views_dql.sql
```

---

## 📝 Sobre a Disciplina

* **Instituição:** FAETERJ (Faculdade de Educação Tecnológica do Estado do Rio de Janeiro)
* **Disciplina:** Gestão de Projetos de Banco de Dados
* **Foco:** Modelagem de Dados (Conceitual, Lógica e Física), Normalização e Implementação em SQL