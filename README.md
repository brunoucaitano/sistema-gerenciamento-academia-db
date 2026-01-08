# 🏋️ Sistema de Gerenciamento de Academias - Banco de Dados

Este projeto consiste na modelagem e implementação de um banco de dados relacional para a informatização e gestão administrativa de academias. O sistema foi desenvolvido como parte da disciplina de **Projeto de Banco de Dados** no curso de **Bacharelado em Sistemas de Informação (IFS)**.

## 📌 Visão Geral do Projeto
O sistema visa otimizar o controle de fluxos essenciais em uma academia, incluindo o cadastro de alunos e instrutores, gerenciamento de planos de assinatura, prescrição de treinos e acompanhamento de avaliações físicas.

## 🛠️ Tecnologias Utilizadas
- **SGBD:** PostgreSQL
- **Linguagem:** SQL (DDL, DML e DQL)
- **Ferramentas:** pgAdmin 4 / Modelagem Relacional

## 🗂️ Estrutura dos Scripts
Os arquivos estão organizados seguindo o ciclo de vida de um banco de dados:

1. **`01_ddl_schema.sql`**: Contém toda a estrutura do banco (Data Definition Language).
   - Criação de tabelas, definição de Chaves Primárias (PK) e Chaves Estrangeiras (FK).
   - Implementação de restrições de integridade e tipos de dados otimizados.

2. **`02_dml_data.sql`**: Script de carga de dados (Data Manipulation Language).
   - Inserção de dados de teste (Amostras de Alunos, Instrutores, Planos e Equipamentos).
   - Scripts de limpeza e deleção para manutenção de testes.

3. **`03_dql_queries.sql`**: Consultas e Inteligência de Negócio (Data Query Language).
   - Relatórios de faturamento por plano.
   - Listagem de alunos por instrutor e nível de experiência.
   - Monitoramento de manutenção de equipamentos.

## 📊 Modelo de Dados
O banco foi estruturado sobre as seguintes entidades principais:
- **Aluno**: Registro cadastral e nível técnico (Iniciante/Avançado).
- **Instrutor**: Gestão de profissionais e especialidades (CREF).
- **Plano**: Definição de tipos de contratos e valores mensais.
- **Matrícula**: Relacionamento N:N entre alunos e planos.
- **Avaliação Física**: Histórico de métricas como Peso, Altura, IMC e Percentual de Gordura.
- **Equipamentos**: Controle de inventário e vida útil.

## 🚀 Como Executar
1. Certifique-se de ter o PostgreSQL instalado.
2. Crie um novo banco de dados chamado `academia_db`.
3. Execute os scripts na ordem numérica (01 -> 02 -> 03) através do Query Tool do pgAdmin ou via terminal psql.

---
**Autor:** Bruno Caitano Alves  
**Instituição:** Instituto Federal de Sergipe (IFS) - Campus Lagarto  
**Ano:** 2025
