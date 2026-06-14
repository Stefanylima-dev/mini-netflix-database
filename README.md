# 🎬 Banco de Dados - Projeto Mini Netflix

Este projeto foi desenvolvido para simular o ecossistema de banco de dados relacional de uma plataforma de streaming, modelando regras de negócios reais, controle parental e extração de métricas financeiras.

## 📐 Estrutura do Banco (Modelo Lógico)
<img width="867" height="556" alt="Captura de tela 2026-06-14 091027" src="https://github.com/user-attachments/assets/aca657d6-02fd-4207-9161-6e7ce193f37f" />


## 🛠️ Tecnologias Utilizadas
* **Banco de Dados:** MySQL
* **Ferramenta de Modelagem:** brModelo
* **Interface Gráfica:** MySQL Workbench

## 📁 Organização do Repositório
* `01_estrutura.sql`: Script de criação das tabelas, definição de tipos de dados (`DECIMAL`, `VARCHAR`, `BOOLEAN`) e integridade referencial (`FOREIGN KEY`).
* `02_dados_teste.sql`: Script para popular o banco de dados com dados de teste simulados.
* `03_consultas.sql`: Consultas analíticas avançadas (Controle Parental com múltiplos `JOINs`, faturamento de planos com `GROUP BY` e ranking Top 10 mais assistidos com `ORDER BY` e `LIMIT`).
