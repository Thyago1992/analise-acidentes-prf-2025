# Unidade 5 — PRF 2025: Cinco Dimensões Chave do Risco de Fatalidade em Rodovias

Análise integrada de letalidade nas rodovias federais brasileiras, com base nos dados abertos de acidentes da Polícia Rodoviária Federal (PRF) referentes ao ano de 2025.

**Autores:** Francisco Lucas, Thyago Antonio & Alex Lopes
**Módulo:** Unidade 5, Módulo 2

## Sobre o Projeto

Este trabalho identifica e analisa cinco dimensões-chave que influenciam a taxa de fatalidade em acidentes de trânsito nas rodovias federais, com o objetivo de subsidiar a priorização de políticas públicas e alocação de recursos.

**Período analisado:** Janeiro a Dezembro de 2025
**Total de ocorrências:** 72.529
**Taxa geral de letalidade:** 7,18%
**Acidentes fatais:** 5.210 (com pelo menos 1 óbito confirmado)

## Conteúdo da Pasta

| Arquivo | Descrição |
|---|---|
| `apresentacao_kpis_prf_2025-v5.pdf` | Apresentação em slides com os 5 KPIs, gráficos e análises |
| `PRF_2025_KPIs_Graficos_4.ipynb` | Notebook Jupyter com o processamento dos dados e geração dos gráficos |

## Os 5 KPIs Analisados

1. **Taxa de Fatalidade por Tipo de Pista** (Engenharia Viária)
   Pista simples apresenta letalidade de 9,86%, o dobro da pista dupla (4,88%).

2. **Taxa de Fatalidade por Causa do Acidente** (Fator Humano)
   "Transitar na contramão" combina alto volume e alta letalidade (29,74%).

3. **Taxa de Fatalidade por Período do Dia** (Escalonamento e Turnos)
   Amanhecer (11,20%) e Plena Noite (10,18%) concentram o dobro da letalidade do Pleno Dia (5,07%).

4. **Taxa de Fatalidade por Condição Climática** (Sazonalidade)
   Nevoeiro/Neblina apresenta letalidade de 10,85%, bem acima de condições como sol (5,88%).

5. **Atropelamento Fatal de Pedestre** (Vulnerabilidade Física)
   Letalidade média de 29,51%, chegando a 40,05% em áreas rurais.

## Principais Conclusões

Os fatores **comportamentais** (condutas graves como contramão) e de **vulnerabilidade física** (atropelamento de pedestres em área rural) apresentam impacto muito maior na letalidade do que fatores estruturais (tipo de pista) ou climáticos (neblina) — respectivamente 4,1x e 5,6x acima da taxa global.

## Metodologia

- **Fonte de dados:** Dados Abertos de Acidentes da PRF (`dados_abertos_prf-datatran2025.csv`)
- **Volume:** 72.529 ocorrências de trânsito válidas em rodovias federais
- **Indicador base:** Acidentes com pelo menos 1 óbito confirmado
