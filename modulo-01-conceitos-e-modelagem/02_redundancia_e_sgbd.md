# 📘 Aula 02 — Conceitos Básicos: Redundância, Compartilhamento e SGBD

Resumo conceitual referente à Aula 02 da disciplina de **Gestão de Projetos de Banco de Dados** (baseado na obra de Carlos Alberto Heuser).

---

## 1. Sistemas Isolados e Redundância de Dados

Quando diferentes setores de uma organização (ex: Vendas, Produção e Compras) são informatizados de forma isolada, cada sistema tende a criar seus próprios arquivos para armazenar informações comuns (como o cadastro de `Produtos`).

Isso gera a **Redundância de Dados**, que ocorre quando uma mesma informação está representada várias vezes no sistema computacional. Existem duas formas de redundância:

### A) Redundância Controlada de Dados
* Ocorre quando o próprio **software** tem conhecimento das múltiplas representações da informação e garante automaticamente a sincronia entre elas.
* Para o usuário externo, funciona como se existisse uma única representação.
* **Objetivo:** Utilizada estrategicamente para melhorar a performance global do sistema (ex: bancos de dados distribuídos em vários servidores).

### B) Redundância Não Controlada de Dados
* Ocorre quando a responsabilidade pela manutenção da sincronia entre os dados duplicados recai sobre o **usuário**, e não sobre o software.
* Deve ser evitada pois provoca dois problemas graves:
  1. **Redigitação:** A mesma informação precisa ser cadastrada repetidas vezes em setores diferentes, gerando retrabalho e erros de transcrição.
  2. **Inconsistência de Dados:** Se um dado for atualizado em um setor (ex: Produção) e esquecido nos demais (ex: Vendas), os sistemas passam a exibir informações divergentes e conflitantes.

---

## 2. Solução: Compartilhamento de Dados e SGBD

* **Compartilhamento de Dados:** Solução para eliminar a redundância não controlada, na qual cada informação é armazenada uma única vez de maneira centralizada e acessada por todos os sistemas que dela necessitam.
* **Banco de Dados (BD):** Conjunto de dados integrados que tem por objetivo atender a uma comunidade de usuários.
* **SGBD (Sistema de Gerenciamento de Banco de Dados):** Software que incorpora as funções de definição, recuperação e alteração de dados em um banco de dados, isolando a complexidade física dos arquivos em relação ao código da aplicação.

---

## 3. Modelo de Dados e Esquema

* **Modelo de Dados:** Descrição formal da estrutura de um banco de dados (define *quais tipos* de informações o banco armazena — ex: Produto possui código, descrição e preço — e não os registros individuais em si).
* **Esquema de Banco de Dados:** É a apresentação visual (gráfica, como um DER) ou textual de um modelo de dados.