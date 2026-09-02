# Unidade 5, Módulo 2: PRF 2025 - Acidentes e Letalidade nas Rodovias Federais

Esta pasta reúne duas entregas independentes sobre o mesmo tema: a letalidade dos acidentes de trânsito nas rodovias federais brasileiras em 2025, com base nos dados abertos da Polícia Rodoviária Federal (PRF), a segunda delas também cruzada com estimativas de população do IBGE.

**Período analisado (ambas as entregas):** Janeiro a Dezembro de 2025
**Total de ocorrências:** 72.529
**Taxa geral de letalidade:** 7,18%

## Conteúdo da Pasta

| Arquivo | Descrição | Autoria |
|---|---|---|
| `apresentacao_kpis_prf_2025-v5.pdf` | Apresentação em slides com os 5 KPIs de letalidade, gráficos e análises | Francisco Lucas, Thyago Antonio & Alex Lopes |
| `PRF_2025_KPIs_Graficos_4.ipynb` | Notebook com o processamento dos dados e geração dos gráficos dos 5 KPIs | Francisco Lucas, Thyago Antonio & Alex Lopes |
| `relatorio-analitico-acidentes-prf-2025-v6.pdf` | Relatório analítico (EDA) individual sobre acidentes e mortes nas rodovias federais, com análise geográfica, temporal, bivariada e correlação de Pearson | Thyago Antonio Sampaio Valadares |
| `relatorio-prf-2025-v6.md` | Relatório analítico em dupla sobre o mesmo tema (volume, letalidade, risco por habitante, tipo de colisão, rodovia, sazonalidade e correlação) | Alex Lopes & Thyago Antonio |
| `analise_acidentes_prf_2025__2_.ipynb` | Notebook que lê a planilha `atividade2_completo.xlsx` e reproduz as tabelas do relatório em dupla | Alex Lopes & Thyago Antonio |

## Entrega 1: Apresentação dos 5 KPIs

Autores: Francisco Lucas, Thyago Antonio & Alex Lopes
Fonte de dados: `dados_abertos_prf-datatran2025.csv`
Indicador base: 5.210 acidentes com pelo menos 1 óbito confirmado

Identifica cinco dimensões-chave que influenciam a taxa de fatalidade em acidentes de trânsito nas rodovias federais, com o objetivo de subsidiar a priorização de políticas públicas e alocação de recursos.

### Os 5 KPIs Analisados

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

Os fatores comportamentais (condutas graves como contramão) e de vulnerabilidade física (atropelamento de pedestres em área rural) apresentam impacto muito maior na letalidade do que fatores estruturais (tipo de pista) ou climáticos (neblina): respectivamente 4,1x e 5,6x acima da taxa global.

## Entrega 2: Relatórios Analíticos (individual e em dupla)

Fonte de dados: PRF 2025 e IBGE 2025 (`relatorio-analitico-acidentes-prf-2025-v6.pdf`) e `atividade2_completo.xlsx` (`relatorio-prf-2025-v6.md`)
Indicador base: 5.209 acidentes fatais, 6.043 óbitos, letalidade nacional de 7,18%, média de 1,16 morto por acidente fatal

Os dois relatórios seguem a mesma base de dados e chegam às mesmas conclusões centrais, com o relatório em dupla ampliando a análise (correlação de Pearson, casos particulares por UF, concentração por rodovia).

### Principais achados

- **Volume e letalidade contam histórias diferentes.** Minas Gerais e Santa Catarina lideram em número de acidentes, mas com letalidade baixa. Estados do Norte e Nordeste (Maranhão, Pará, Roraima) têm bem menos acidentes, porém letalidade até 4x maior.
- **O tipo de colisão explica a gravidade melhor do que o estado.** Colisão frontal e atropelamento de pedestre somam apenas 10,7% dos acidentes, mas concentram 46% das mortes (letalidade de 29,4% e 29,5%, contra 4,3% da colisão traseira, o tipo mais comum).
- **Risco por habitante e letalidade são medidas distintas.** Tocantins e Mato Grosso têm o maior risco de morte por 100 mil habitantes (6,4 e 6,2), enquanto Maranhão, Pará e Roraima têm a maior letalidade por acidente (18,7%, 17,3% e 16,2%).
- **Sazonalidade:** dezembro concentra o maior volume de acidentes (6.788), mas maio é o mês mais letal (8,3%), por conta de feriados prolongados em rodovias de pista simples.
- **Correlação de Pearson:** acidentes por 100 mil habitantes correlacionam negativamente com letalidade (r = -0,55) e positivamente com mortos por 100 mil habitantes (r = +0,73), ou seja, mais tráfego reduz a letalidade média, mas ainda aumenta o total de mortes.

## Metodologia

- **Fonte de dados:** Dados Abertos de Acidentes da PRF, complementados por estimativas populacionais do IBGE (nos relatórios analíticos)
- **Volume:** 72.529 ocorrências de trânsito válidas em rodovias federais no ano de 2025
- **Indicador base:** Acidentes com pelo menos 1 óbito confirmado (a apresentação de KPIs registra 5.210 acidentes fatais; os relatórios analíticos registram 5.209, uma pequena diferença de base entre as duas entregas)
