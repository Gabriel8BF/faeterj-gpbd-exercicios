# 📘 Aula 01 — Introdução a Banco de Dados e Modelagem

Resumo conceitual referente à Aula 01 da disciplina de **Gestão de Projetos de Banco de Dados**.

---

## 1. Diferença entre Informação e Dado

* **Informação:** Acrescenta algo ao conhecimento da realidade analisada (possui significado no contexto humano/negócio). Exemplo: a dosagem de um medicamento que um paciente precisa receber em um CTI.
* **Dado:** É o registro físico ou representação bruta de uma informação (em papel, disco de computador, impulso elétrico), filtrando apenas os aspectos relevantes para o objetivo do sistema.
* **Princípio Fundamental:** Por definição, um computador não processa informações, mas sim **dados**.

---

## 2. Metodologia e Ciclo de Vida do Software

Uma **metodologia** estabelece um caminho padronizado para o desenvolvimento ou evolução de sistemas, provendo atividades e pontos de checagem para controle e auditoria. Ela define o **Ciclo de Vida**, dividido em 3 grandes etapas:

1. **Definição:** Identificação do problema, análise do sistema, modelagem de processos e escolha do modelo de ciclo de vida.
2. **Desenvolvimento:** Design, prototipagem, codificação, testes e aplicação das regras de negócio.
3. **Operação:** Sistema em produção, suporte aos usuários, correção de bugs e evolução contínua.

### Principais Modelos de Ciclo de Vida
* **Cascata (Tradicional):** Fases estritamente sequenciais e requisitos congelados no início. Fácil gestão, porém baixa interação com o usuário e dificuldade em acomodar mudanças (alta incidência de manutenção).
* **Evolutivo:** Permite mudanças rápidas e entregas em versões (inicial, intermediária e final) com alta interação do usuário, mas dificulta o controle de escopo e tempo.
* **Incremental:** Divide o sistema em partes menores (incrementos), disponibilizando funcionalidades mais cedo e isolando eventuais erros apenas no último incremento.
* **Espiral:** Baseado em voltas evolutivas (planejamento, análise de risco, modelagem, desenvolvimento, teste e avaliação) sem fases fixas, focado na mitigação de riscos.

### Da Análise Estruturada à Engenharia da Informação
* **Análise Estruturada (anos 60/70):** Foco nas funções do programa organizadas hierarquicamente, buscando **baixo acoplamento** (independência entre módulos) e **alta coesão** (relações internas coesas).
* **Engenharia de Software (anos 70):** Orientação rigorosa por processos em 7 fases (viabilidade, análise, projeto, implementação, teste do sistema, teste do usuário e produção), foco em métricas e reutilização de código.
* **Engenharia da Informação (1981):** Constatou que os processos de uma organização mudam constantemente por influência externa, mas os **dados são extremamente estáveis** (só mudam quando o próprio negócio evolui). Assim, o **DADO** passou a ser o centro do projeto de sistemas.

---

## 3. O que é Modelagem de Dados e seus Principais Tipos

A **Modelagem de Dados** é o processo de análise e descrição formal da estrutura de um banco de dados, definindo quais tipos de informações relevantes serão armazenados e como se relacionam. Divide-se em três níveis de abstração:

1. **Modelagem Conceitual:** Nível mais alto de abstração e totalmente independente do SGBD. Identifica os conceitos do negócio (Entidades, Relacionamentos e Atributos) por meio do **Diagrama Entidade-Relacionamento (DER)**.
2. **Modelagem Lógica:** Traduz o modelo conceitual para a estrutura lógica do paradigma de SGBD escolhido (no modelo Relacional, define tabelas, colunas, chaves primárias e chaves estrangeiras).
3. **Modelagem Física:** Descreve a implementação técnica no SGBD específico (ex: MySQL), definindo tipos físicos de dados (`VARCHAR`, `INT`, `DECIMAL`), restrições, índices e scripts SQL.