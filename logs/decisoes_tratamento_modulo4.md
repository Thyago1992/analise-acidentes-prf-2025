
# Decisões de tratamento — Módulo 4

Data de geração: 2026-08-10 21:48

## Principais decisões
- Nomes de colunas padronizados para minúsculas, sem acentos e com underline.
- Leitura do CSV testando primeiro UTF-8 (encoding real do arquivo) e só usando latin1 como
  último recurso — evita corromper acentos, já que latin1 quase nunca gera erro de leitura.
- Coluna `km` convertida trocando vírgula por ponto antes de virar numérica (formato decimal
  brasileiro); sem esse ajuste, ~37% das linhas perderiam o valor de km por engano.
- Colunas numéricas convertidas com `pd.to_numeric(errors='coerce')`.
- Datas convertidas com `pd.to_datetime(errors='coerce')`.
- Categorias ausentes relevantes preenchidas como IGNORADO.
- Variável-alvo: acidente_fatal = 1 quando mortos >= 1.
- Base modelável exclui variáveis derivadas do desfecho (sem data leakage).

## Arquivos gerados
- dados_tratados/base_analitica_prf_2025.csv
- dados_tratados/base_modelavel_prf_2025.csv
- dados_tratados/dicionario_variaveis_modulo4.csv
