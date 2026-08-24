-- Módulo 3 - SQL com SQLite (SQLiteOnline)
-- Projeto: Data Analytics com Dados Abertos da PRF
-- Base: Acidentes 2025 agrupados por ocorrência
-- Problema: fatores associados a acidentes com vítimas fatais
-- Alvo: acidente_fatal = 1 quando mortos >= 1; caso contrário 0

-- Autor: Thyago Antonio Sampaio Valadares
-- Data: 27/07/2026
-- Fonte: Dados Abertos da PRF - DATATRAN 2025

/*A coluna de clima ficou como "condicao_metereo" no banco. O nome original
do CSV é "condicao_metereologica", mas a ferramenta de importação corta
os nomes de coluna em 16 caracteres, então o nome real acabou sendo esse*/
-- Importe o CSV como "acidentes_prf_2025" antes de executar este script.

-- Questão 1: Consulta: versão do SQLite
-- Objetivo: confirmar com qual motor/versão o script vai rodar, antes de começar
SELECT sqlite_version() AS versao_sqlite;

-- Questão 2: Consulta: estrutura da tabela importada
-- Objetivo: checar se os nomes e tipos das colunas vieram corretos da importação
PRAGMA table_info(acidentes_prf_2025);

-- Questão 3: Consulta: contagem total de registros
-- Objetivo: confirmar que a importação trouxe todas as ocorrências, sem perdas
SELECT COUNT(*) AS total_ocorrencias
FROM acidentes_prf_2025;

-- Questão 4: Remove a view antes de recriar, pra não dar erro se ela já existir
DROP VIEW IF EXISTS vw_acidentes_base;

-- Questão 5: View: vw_acidentes_base
-- Objetivo: marcar cada acidente com a flag acidente_fatal, base pra todas as
-- consultas seguintes do script
CREATE VIEW vw_acidentes_base AS
SELECT
    *,
    CASE WHEN mortos >= 1 THEN 1 ELSE 0 END AS acidente_fatal
FROM acidentes_prf_2025;

-- Validação da variável-alvo
-- Objetivo: conferir se a flag acidente_fatal foi atribuída corretamente,
-- comparando as duas categorias com o total de mortos em cada uma
SELECT
    acidente_fatal,
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_mortos
FROM vw_acidentes_base
GROUP BY acidente_fatal;

-- Questão 6: Consulta: indicadores gerais de letalidade
-- Objetivo: ter o total de acidentes, total de fatais e o % de letalidade da base inteira
SELECT
    COUNT(*) AS total_acidentes,
    SUM(acidente_fatal) AS acidentes_fatais,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base;

-- Questão 7: Consulta: letalidade por UF
-- Objetivo: comparar estados pelo percentual de acidentes fatais
-- Critério: só entram UFs com pelo menos 100 ocorrências, pra não comparar
-- estados com poucos registros e distorcer o percentual
SELECT
    uf,
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_mortos,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY uf
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Questão 8: Consulta: top 30 rodovias mais letais
-- Objetivo: identificar as BRs com maior número absoluto de mortos
-- Critério: nenhum, já que a base não tem BR nula ou vazia
SELECT
    br,
    SUM(mortos) AS total_mortos
FROM vw_acidentes_base
GROUP BY br
ORDER BY total_mortos DESC
LIMIT 30;

-- Questão 8b: Consulta: top 30 municípios com mais acidentes
-- Objetivo: consulta univariada por município, pra completar a lista do checklist
SELECT
    municipio,
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_mortos
FROM vw_acidentes_base
GROUP BY municipio
ORDER BY total_acidentes DESC
LIMIT 30;

-- Questão 9: Consulta: evolução mensal dos acidentes
-- Objetivo: ver como o volume de acidentes varia ao longo do ano
SELECT
    strftime('%Y', data_inversa) AS ano,
    strftime('%m', data_inversa) AS mes,
    COUNT(*) AS total_acidentes
FROM vw_acidentes_base
GROUP BY ano, mes
ORDER BY ano, mes;

-- Questão 10: Consulta: letalidade por tipo de acidente
-- Objetivo: análise bivariada cruzando tipo_acidente com acidente_fatal
-- Critério: tipos com pelo menos 100 ocorrências
SELECT
    tipo_acidente,
    COUNT(*) AS total_acidentes,
    SUM(acidente_fatal) AS acidentes_fatais,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY tipo_acidente
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Questão 11: Consulta: top 30 causas de acidente por letalidade
-- Objetivo: análise bivariada cruzando causa_acidente com acidente_fatal
-- Critério: causas com pelo menos 100 ocorrências
SELECT
    causa_acidente,
    COUNT(*) AS total_acidentes,
    SUM(acidente_fatal) AS acidentes_fatais,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY causa_acidente
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC
LIMIT 30;

-- Questão 12: Consulta: letalidade por fase do dia
-- Objetivo: análise bivariada cruzando fase_dia com acidente_fatal
-- Critério: fases com pelo menos 100 ocorrências
SELECT
    fase_dia,
    COUNT(*) AS total_acidentes,
    SUM(acidente_fatal) AS acidentes_fatais,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY fase_dia
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Questão 13: Consulta: letalidade por condição meteorológica
-- Objetivo: análise bivariada cruzando condicao_metereo com acidente_fatal
-- Critério: condições com pelo menos 100 ocorrências
SELECT
    condicao_metereo,
    COUNT(*) AS total_acidentes,
    SUM(acidente_fatal) AS acidentes_fatais,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY condicao_metereo
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Questão 14: Consulta: letalidade por tipo de pista
-- Objetivo: análise bivariada cruzando tipo_pista com acidente_fatal
-- Critério: tipos de pista com pelo menos 100 ocorrências
SELECT
    tipo_pista,
    COUNT(*) AS total_acidentes,
    SUM(acidente_fatal) AS acidentes_fatais,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY tipo_pista
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Questão 15: Consulta: tipo de pista x fase do dia
-- Objetivo: cruzar dois fatores ao mesmo tempo pra achar contextos específicos de risco
-- Critério: combinações com pelo menos 100 ocorrências
-- cobertura_perc mostra quanto essa combinação representa do total de acidentes
SELECT
    tipo_pista,
    fase_dia,
    COUNT(*) AS total_acidentes,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM vw_acidentes_base), 2) AS cobertura_perc,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY tipo_pista, fase_dia
HAVING COUNT(*) >= 100
ORDER BY perc_fatais DESC;

-- Questão 16: Consulta: lift por tipo de acidente
-- Objetivo: medir quantas vezes cada tipo de acidente é mais (ou menos) letal
-- que a média geral da base (lift = taxa do tipo dividida pela taxa geral)
-- Critério: tipos com pelo menos 100 ocorrências
SELECT
    tipo_acidente,
    COUNT(*) AS total_acidentes,
    ROUND(
        (1.0 * SUM(acidente_fatal) / COUNT(*))
        / (SELECT 1.0 * SUM(acidente_fatal) / COUNT(*) FROM vw_acidentes_base),
        2
    ) AS lift
FROM vw_acidentes_base
GROUP BY tipo_acidente
HAVING COUNT(*) >= 100
ORDER BY lift DESC;

-- Questão 17: View com os indicadores mensais prontos, pra facilitar relatórios recorrentes
DROP VIEW IF EXISTS vw_indicadores_mensais;

-- View: vw_indicadores_mensais
-- Objetivo: consolidar os indicadores por ano/mês pra reaproveitar em relatórios
CREATE VIEW vw_indicadores_mensais AS
SELECT
    strftime('%Y', data_inversa) AS ano,
    strftime('%m', data_inversa) AS mes,
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_mortos,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY ano, mes;

SELECT * FROM vw_indicadores_mensais ORDER BY ano, mes;

-- Questão 18: View consolidada por UF e rodovia, pensada pra alimentar um dashboard
DROP VIEW IF EXISTS vw_indicadores_uf_br;

-- View: vw_indicadores_uf_br
-- Objetivo: consolidar os indicadores por UF e rodovia pra uso em dashboard
CREATE VIEW vw_indicadores_uf_br AS
SELECT
    uf,
    br,
    COUNT(*) AS total_acidentes,
    SUM(mortos) AS total_mortos,
    ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
FROM vw_acidentes_base
GROUP BY uf, br;

SELECT * FROM vw_indicadores_uf_br ORDER BY total_mortos DESC;
