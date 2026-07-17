# Analise_E-comerce
Projeto de análise de dados de um E-comerce brasileiro, com dados extraídos da plataforma Kaggle.

## Visão Geral do Projeto
Este projeto consiste no desenvolvimento de uma solução de Business Intelligence ponta a ponta. Utilizando o ecossistema do MySQL e Power BI, o objetivo foi extrair, transformar, modelar e visualizar dados históricos de vendas da Olist (e-commerce brasileiro) para apoiar tomadas de decisão estratégicas em vendas, logística e comportamento do consumidor.

## Tecnologias e Ferramentas Utilizadas
* **Banco de Dados:** MySQL (Consultas complexas, Otimização de queries)
* **Visualização & Modelagem:** Power BI Desktop
* **Linguagens:** SQL, DAX (Data Analysis Expressions), M (Power Query)
* **Metodologia de Trabalho:** Versionamento com Git/GitHub e gestão de tarefas

## Arquitetura e Etapas de Desenvolvimento

### 1. Engenharia de Dados & ETL (SQL)
* Modelagem e população do banco de dados relacional.
* Criação de **Views robustas** otimizadas para o Power BI, reduzindo o volume de processamento na camada de visualização.
* Uso avançado de comandos `JOIN` para consolidar tabelas de clientes, pedidos, itens e produtos, mitigando inconsistências nos IDs relacionais.

### 2. Modelagem de Dados (Power BI)
* Implementação do padrão **Star Schema (Esquema Estrela)**, separando rigidamente tabelas Fato (Vendas) e tabelas Dimensão (Clientes, Produtos, dCalendario).
* Normalização da granularidade temporal (`DATETIME` para `DATE`) no Power Query para garantir integridade referencial de chaves.

### 3. Desenvolvimento Analítico (DAX)
* Criação de uma tabela unificada de medidas organizadas em subpastas para facilitar a manutenção.
* Fórmulas aplicadas: *Faturamento Total*, *Volume de Pedidos*, *Ticket Médio* e métricas com funções de inteligência de tempo.
* Tratamento de strings e higienização de taxonomias textuais (letras maiúsculas e padronização de caracteres).

## Estrutura do Dashboard
* **Painel Interativo de Filtros:** Segmentadores de dados dinâmicos utilizando interações cruzadas configuradas manualmente e filtros *Top N* para rankings de produtos.

## Principais Insights Obtidos
* O estado de São Paulo concentra a maior densidade de faturamento, representando mais de 37,34% do volume total.
* Em 2018, duas categorias tiveram o maior faturamento: "Beleza Saúde" e "Cama, Mesa e Banho"

---
