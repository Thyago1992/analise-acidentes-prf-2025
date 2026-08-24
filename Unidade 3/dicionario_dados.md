# Dicionário de Dados — acidentes_prf_2025

Fonte: Dados Abertos da PRF - DATATRAN 2025
Autor: Thyago Antonio Sampaio Valadares

| Coluna | Descrição |
|---|---|
| id | Identificador único da ocorrência |
| data_inversa | Data do acidente (AAAA-MM-DD) |
| dia_semana | Dia da semana do acidente |
| horario | Horário do acidente |
| uf | Unidade da Federação |
| br | Número da rodovia federal |
| km | Quilômetro da rodovia onde ocorreu o acidente |
| municipio | Município onde ocorreu o acidente |
| causa_acidente | Causa declarada do acidente |
| tipo_acidente | Tipo do acidente (colisão, atropelamento, tombamento etc.) |
| classificacao_acidente | Gravidade declarada (com vítimas fatais, feridos, etc.) |
| fase_dia | Período do dia (pleno dia, plena noite, amanhecer, anoitecer) |
| sentido_via | Sentido do tráfego no momento do acidente |
| condicao_metereo | Condição meteorológica (nome truncado — ver observação abaixo) |
| tipo_pista | Tipo de pista (simples, dupla, múltipla) |
| tracado_via | Traçado da via (reta, curva, cruzamento etc.) |
| uso_solo | Se a via está em área urbana (Sim) ou rural (Não) |
| pessoas | Total de pessoas envolvidas |
| mortos | Total de mortos na ocorrência |
| feridos_leves | Total de feridos leves |
| feridos_graves | Total de feridos graves |
| ilesos | Total de pessoas ilesas |
| ignorados | Total de pessoas com estado ignorado |
| feridos | Total de feridos (leves + graves) |
| veiculos | Total de veículos envolvidos |
| latitude / longitude | Coordenadas geográficas do acidente |
| regional / delegacia / uop | Unidades administrativas da PRF responsáveis pela via |

## Coluna derivada (criada no script)

| Coluna | Descrição |
|---|---|
| acidente_fatal | Flag binária: 1 quando mortos >= 1, 0 caso contrário. Criada na view `vw_acidentes_base` |

## Observações

- **Encoding**: o CSV original vem em ISO-8859-1 (Latin-1). Foi convertido
  para UTF-8 antes de importar, pra evitar caracteres corrompidos (ex:
  "Colis�o" ao invés de "Colisão").
- **Nome de coluna truncado**: a ferramenta de importação do SQLiteOnline
  corta nomes de coluna em 16 caracteres. Por isso, "condicao_metereologica"
  (23 caracteres) virou "condicao_metereo" no banco.
- **Tipos de coluna**: a maioria das colunas foi importada como TEXT. A
  coluna `mortos` foi importada como INTEGER de verdade, então as consultas
  não precisam de CAST nela.
- **Critério de corte**: as consultas univariadas e bivariadas usam
  `HAVING COUNT(*) >= 100` como volume mínimo, pra evitar comparar
  categorias com poucos registros (que distorceriam o percentual).
- **Coluna br**: não há valores nulos ou vazios nessa base, então as
  consultas por BR não precisam de filtro `WHERE br IS NOT NULL`.
