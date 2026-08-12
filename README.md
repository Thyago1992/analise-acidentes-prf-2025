# Análise de Acidentes da PRF - 2025

Projeto de Data Analytics com dados abertos da Polícia Rodoviária Federal
(DATATRAN 2025).

**Autor:** Thyago Antonio Sampaio Valadares

## Objetivo

Investigar fatores associados a acidentes com vítimas fatais, cruzando a
variável-alvo `acidente_fatal` com UF, rodovia, município, mês, causa, tipo
de acidente, fase do dia, condição meteorológica e tipo de pista.

## Conteúdo do repositório, por unidade

### Unidade 1 - Compreensão do negócio

Documento que define o problema central, o objetivo analítico, o público-alvo,
a variável-alvo, a classificação inicial das variáveis, as perguntas
orientadoras, as hipóteses e as limitações do projeto. É a bússola das demais
etapas. Documento em `docs/01_compreensao_negocio.md`.

### Unidade 2 - Exploração inicial em Excel

Planilha com a primeira leitura da base: dados importados, dicionário
resumido, tabelas dinâmicas e gráficos exploratórios, além das observações
registradas durante a exploração. Foi onde as primeiras hipóteses ganharam
evidência antes de partir para SQL e Python. Planilha em
`excel/modulo_02_excel_prf_thyago_antonio.xlsx`.

### Unidade 3 - Consultas SQL

Consultas SQL sobre a base bruta, com resultados exportados em CSV. Script
comentado em `sql/modulo3_prf.sql`, documentação da etapa em
`docs/README_SQL.md` e dicionário de dados em `docs/dicionario_dados.md`.
Resultados em `resultados/`.

### Unidade 4 - Preparação de dados em Python

Notebook executável que padroniza, trata e transforma a base bruta, cria a
variável-alvo `acidente_fatal` e gera dois produtos finais: uma base analítica
completa (para EDA e Power BI) e uma base modelável sem data leakage (para a
árvore de decisão). Notebook em `notebooks/modulo4_preparacao_dados.ipynb`.
Bases geradas em `dados_tratados/` e decisões de tratamento em
`logs/decisoes_tratamento_modulo4.md`.

## Estrutura do repositório

```
projeto_prf/
├── dados_brutos/     # CSV original da PRF (nunca sobrescrever)
├── excel/            # planilha de exploração inicial (Unidade 2)
├── sql/               # script SQL comentado (Unidade 3)
├── resultados/       # consultas exportadas em CSV (Unidade 3)
├── notebooks/        # notebook de preparação de dados (Unidade 4)
├── dados_tratados/   # base analítica e base modelável (Unidade 4)
└── docs/             # compreensão do negócio (Unidade 1), dicionários e decisões de tratamento
```

## Como reproduzir

### Unidade 2 - Exploração em Excel

1. Abra `excel/modulo_02_excel_prf_thyago_antonio.xlsx`.
2. As tabelas dinâmicas e os gráficos já estão calculados sobre a aba `dados`.
   Se quiser recalcular, use Dados > Atualizar Tudo.

### Unidade 3 - Consultas SQL

1. Importe `dados_brutos/acidentes2025.csv` no SQLite (ou
   SQLiteOnline) como tabela `acidentes_prf_2025`.
2. Rode `sql/modulo3_prf.sql` do início ao fim.
3. Os resultados batem com os arquivos já exportados em `resultados/`.

### Unidade 4 - Preparação de dados em Python

1. Abra `notebooks/modulo4_preparacao_dados.ipynb` num ambiente com pandas,
   numpy e matplotlib.
2. Rode todas as células em ordem.
3. As bases geradas devem bater com as já exportadas em `dados_tratados/`.

O contexto e as decisões de negócio estão em
`docs/01_compreensao_negocio.md`. Mais detalhes sobre as colunas e decisões
técnicas tomadas na análise estão em `docs/dicionario_dados.md` e
`logs/decisoes_tratamento_modulo4.md`.
