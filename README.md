# Análise de Acidentes da PRF - 2025

Projeto de Data Analytics com dados abertos da Polícia Rodoviária Federal
(DATATRAN 2025), desenvolvido no Módulo 3 do curso (SQL com SQLite).

**Autor:** Thyago Antonio Sampaio Valadares

## Objetivo

Investigar fatores associados a acidentes com vítimas fatais, cruzando a
variável-alvo `acidente_fatal` com UF, rodovia, município, mês, causa, tipo
de acidente, fase do dia, condição meteorológica e tipo de pista.

## Estrutura do repositório

```
projeto_prf/
├── dados_brutos/   # CSV original da PRF (nunca sobrescrever)
├── sql/            # script SQL comentado (modulo3_prf.sql)
├── resultados/     # todas as consultas exportadas em CSV
└── docs/           # dicionário de dados e observações do projeto
```

## Como reproduzir

1. Importe `dados_brutos/acidentes_prf_2025.csv` no SQLite (ou SQLiteOnline)
   como tabela `acidentes_prf_2025`.
2. Rode `sql/modulo3_prf.sql` do início ao fim.
3. Os resultados batem com os arquivos já exportados em `resultados/`.

Mais detalhes sobre as colunas e decisões tomadas na análise estão em
`docs/dicionario_dados.md`.
