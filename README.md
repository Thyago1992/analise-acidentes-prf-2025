# Análise de Acidentes da PRF - 2025

Projeto de Data Analytics com dados abertos da Polícia Rodoviária Federal
(DATATRAN 2025), desenvolvido ao longo do curso, módulo por módulo.

**Autor:** Thyago Antonio Sampaio Valadares

## Objetivo

Investigar fatores associados a acidentes com vítimas fatais, cruzando a
variável-alvo `acidente_fatal` com UF, rodovia, município, mês, causa, tipo
de acidente, fase do dia, condição meteorológica e tipo de pista.

## Módulos do projeto

### Módulo 3, SQL com SQLite

Consultas SQL sobre a base bruta, com resultados exportados em CSV.
Script comentado em `sql/modulo3_prf.sql`.

### Módulo 4, Python para preparação dos dados

Notebook executável que padroniza, trata e transforma a base bruta,
cria a variável-alvo `acidente_fatal` e gera dois produtos finais: uma
base analítica completa (para EDA e Power BI) e uma base modelável sem
data leakage (para a árvore de decisão dos módulos seguintes). Notebook
em `notebooks/modulo4_preparacao_dados.ipynb`.

## Estrutura do repositório

```
projeto_prf/
├── dados_brutos/     # CSV original da PRF (nunca sobrescrever)
├── sql/              # script SQL comentado (Módulo 3)
├── resultados/       # consultas do Módulo 3 exportadas em CSV
├── notebooks/        # notebook de preparação de dados (Módulo 4)
├── dados_tratados/   # base analítica e base modelável (Módulo 4)
└── docs/             # dicionários de dados e decisões de tratamento
```

## Como reproduzir

### Módulo 3, SQL

1. Importe `dados_brutos/acidentes_prf_2025.csv` no SQLite (ou
   SQLiteOnline) como tabela `acidentes_prf_2025`.
2. Rode `sql/modulo3_prf.sql` do início ao fim.
3. Os resultados batem com os arquivos já exportados em `resultados/`.

### Módulo 4, Python

1. Abra `notebooks/modulo4_preparacao_dados.ipynb` num ambiente com
   pandas, numpy e matplotlib.
2. Rode todas as células em ordem.
3. As bases geradas devem bater com as já exportadas em
   `dados_tratados/`.

Mais detalhes sobre as colunas e decisões tomadas na análise estão em
`docs/dicionario_dados.md` (Módulo 3) e
`docs/decisoes_tratamento_modulo4.md` (Módulo 4).
