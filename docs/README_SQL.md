# README_SQL

Documentação da etapa SQL do projeto de análise de acidentes da PRF 2025.

## Fonte dos dados

Dados Abertos da Polícia Rodoviária Federal, base DATATRAN, ano de 2025.
Acidentes agrupados por ocorrência, uma linha por acidente.
Arquivo bruto: `dados_brutos/acidentes2025.csv`, separador `;`, encoding UTF-8.

## Ferramenta e versão

SQLite 3.45.1, executado via SQLiteOnline.
A versão é confirmada pela primeira consulta do script e está registrada em
`resultados/01_versao_sqlite.csv`.

## Como executar o script

1. Importe `dados_brutos/acidentes2025.csv` como tabela `acidentes_prf_2025`.
2. Abra `sql/modulo3_prf.sql` e execute do início ao fim, na ordem.
3. O script cria a view `vw_acidentes_base`, com a coluna `acidente_fatal`,
   e todas as consultas seguintes leem dessa view.
4. Exporte cada resultado em CSV com a numeração correspondente à questão.

## Número de controle

`total_ocorrencias = 72529`

Se a contagem da questão 3 der outro valor, a importação perdeu ou duplicou
linhas e o restante do script não deve ser considerado válido.

Indicadores gerais para conferência:

| Indicador | Valor |
|---|---|
| Total de acidentes | 72.529 |
| Acidentes fatais | 5.210 |
| Percentual de fatais | 7,18% |
| Total de mortos | 6.043 |

## Arquivos gerados

Todos em `resultados/`, na ordem das questões do script.

| Arquivo | Conteúdo |
|---|---|
| 01_versao_sqlite.csv | Versão do motor SQLite |
| 02_estrutura_tabela.csv | Colunas e tipos após a importação |
| 03_total_ocorrencias.csv | Contagem total de registros |
| 04_validacao_acidente_fatal.csv | Validação da variável-alvo |
| 05_metricas_gerais.csv | Indicadores gerais de letalidade |
| 06_por_uf.csv | Letalidade por UF |
| 07_top30_br_mortos.csv | Top 30 rodovias por total de mortos |
| 08_top30_municipio.csv | Top 30 municípios por volume de acidentes |
| 09_evolucao_ano_mes.csv | Evolução mensal dos acidentes |
| 10_tipo_acidente.csv | Letalidade por tipo de acidente |
| 11_top30_causa_acidente.csv | Letalidade por causa registrada |
| 12_fase_dia.csv | Letalidade por fase do dia |
| 13_condicao_metereo.csv | Letalidade por condição meteorológica |
| 14_tipo_pista.csv | Letalidade por tipo de pista |
| 15_pista_fase_dia.csv | Cruzamento de tipo de pista com fase do dia |
| 16_lift_tipo_acidente.csv | Lift de letalidade por tipo de acidente |
| 17_view_indicadores_mensais.csv | View consolidada por ano e mês |
| 18_view_indicadores_uf_br.csv | View consolidada por UF e rodovia |

## Decisões

- A variável-alvo `acidente_fatal` foi criada na view `vw_acidentes_base` com
  `CASE WHEN mortos >= 1 THEN 1 ELSE 0`, e não em cada consulta separada, para
  garantir que todas usem a mesma definição.
- As consultas por categoria usam `HAVING COUNT(*) >= 100` como volume mínimo,
  para não comparar percentuais calculados sobre poucos registros.
- As consultas univariadas e bivariadas foram consolidadas: a mesma consulta
  traz o volume (`COUNT(*)`) e o percentual de fatais (`perc_fatais`).
- Além dos cruzamentos pedidos, o script traz o lift por tipo de acidente, que
  mostra quantas vezes cada tipo é mais letal que a média geral da base.

## Limitações

- O CSV original vem em ISO-8859-1 e foi convertido para UTF-8 antes da
  importação, para evitar acentos corrompidos.
- A ferramenta de importação corta nomes de coluna em 16 caracteres, então
  `condicao_metereologica` virou `condicao_metereo` no banco.
- A maioria das colunas foi importada como TEXT. A coluna `mortos` veio como
  INTEGER, então as consultas de letalidade não precisam de CAST.
- Os percentuais indicam associação, não causalidade. Um tipo de acidente com
  alta letalidade não é necessariamente a causa da morte.
- A base não traz volume de tráfego por trecho, então rodovias movimentadas
  tendem a aparecer no topo dos rankings por volume absoluto.
