# 🚦 Análise de Acidentes da PRF - 2025

Projeto de Data Analytics com dados abertos da Polícia Rodoviária Federal (DATATRAN 2025).

**Autor:** Thyago Antonio Sampaio Valadares

## 🎯 Objetivo

Investigar fatores associados a acidentes com vítimas fatais, cruzando a variável-alvo `acidente_fatal` com UF, rodovia, município, mês, causa, tipo de acidente, fase do dia, condição meteorológica e tipo de pista.

## 📂 Conteúdo do repositório, por unidade

### 1️⃣ Unidade 1 - Compreensão do negócio

Documento que define o problema central, o objetivo analítico, o público-alvo, a variável-alvo, a classificação inicial das variáveis, as perguntas orientadoras, as hipóteses e as limitações do projeto. É a bússola das demais etapas.

📄 Documento em `Unidade 1/01_compreensao_negocio.md`

### 2️⃣ Unidade 2 - Exploração inicial em Excel

Planilha com a primeira leitura da base: dados importados, dicionário resumido, tabelas dinâmicas e gráficos exploratórios, além das observações registradas durante a exploração. Foi onde as primeiras hipóteses ganharam evidência antes de partir para SQL e Python.

📊 Planilha em `Unidade 2/modulo_02_excel_prf_thyago_antonio.xlsx`

### 3️⃣ Unidade 3 - Consultas SQL

Consultas SQL sobre a base bruta, com resultados exportados em CSV.

- 🧾 Script comentado em `Unidade 3/modulo3_prf.sql`
- 📘 Documentação da etapa em `Unidade 3/README_SQL.md`
- 📖 Dicionário de dados em `Unidade 3/dicionario_dados.md`
- 📁 Resultados em `Unidade 3/resultados/`

### 4️⃣ Unidade 4 - Preparação de dados em Python

Notebook executável que padroniza, trata e transforma a base bruta, cria a variável-alvo `acidente_fatal` e gera dois produtos finais: uma base analítica completa (para EDA e Power BI) e uma base modelável sem data leakage (para a árvore de decisão).

- 🐍 Notebook em `Unidade 4/modulo4_preparacao_dados.ipynb`
- 📁 Bases geradas em `Unidade 4/dados_tratados/`
- 📝 Decisões de tratamento em `Unidade 4/decisoes_tratamento_modulo4.md`

## 🗂 Estrutura do repositório

```
analise-acidentes-prf-2025/
├── Unidade 1/        # compreensão do negócio
├── Unidade 2/        # exploração inicial em Excel
├── Unidade 3/        # consultas SQL e resultados exportados
├── Unidade 4/        # preparação de dados em Python
└── dados_brutos/     # CSV original da PRF (nunca sobrescrever)
```

## 🚀 Como reproduzir

### 2️⃣ Unidade 2 - Exploração em Excel

1. Abra `Unidade 2/modulo_02_excel_prf_thyago_antonio.xlsx`.
2. As tabelas dinâmicas e os gráficos já estão calculados sobre a aba `dados`. Se quiser recalcular, use Dados > Atualizar Tudo.

### 3️⃣ Unidade 3 - Consultas SQL

1. Importe `dados_brutos/acidentes2025.csv` no SQLite (ou SQLiteOnline) como tabela `acidentes_prf_2025`.
2. Rode `Unidade 3/modulo3_prf.sql` do início ao fim.
3. Os resultados batem com os arquivos já exportados em `Unidade 3/resultados/`.

### 4️⃣ Unidade 4 - Preparação de dados em Python

1. Abra `Unidade 4/modulo4_preparacao_dados.ipynb` num ambiente com pandas, numpy e matplotlib.
2. Rode todas as células em ordem.
3. As bases geradas devem bater com as já exportadas em `Unidade 4/dados_tratados/`.

## 📎 Mais detalhes

- Contexto e decisões de negócio: `Unidade 1/01_compreensao_negocio.md`
- Colunas e decisões técnicas: `Unidade 3/dicionario_dados.md` e `Unidade 4/decisoes_tratamento_modulo4.md`

## 👤 Autor

Desenvolvido por **Thyago Antonio Sampaio Valadares**.

[![GitHub](https://img.shields.io/badge/GitHub-Thyago1992-181717?style=flat&logo=github)](https://github.com/Thyago1992)
