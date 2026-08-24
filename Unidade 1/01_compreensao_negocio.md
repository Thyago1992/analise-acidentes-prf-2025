# Documento de Compreensão do Negócio

Projeto: Análise de Acidentes em Rodovias Federais (PRF 2025)
Autor: Thyago Antonio Sampaio Valadares
Etapa: Módulo 1, Unidade 1 (Business Understanding do CRISP-DM)

## 1. Contexto e Problema

Os acidentes em rodovias federais brasileiras são registrados pela Polícia
Rodoviária Federal e publicados como dados abertos na base DATATRAN. Para o ano
de 2025, a base agrupada por ocorrência reúne 72.529 acidentes.

Nem todo acidente tem o mesmo desfecho. A maioria termina sem mortes, mas uma
parcela resulta em vítimas fatais, e é essa parcela que concentra o custo social
do problema. O problema central deste projeto é entender quais fatores estão
associados aos acidentes que terminam em morte, de modo a apoiar decisões de
prevenção.

## 2. Objetivo e Público

**Objetivo analítico:** identificar e quantificar os fatores associados à
ocorrência de acidentes com vítimas fatais nas rodovias federais em 2025,
produzindo indicadores comparáveis por localidade, tempo e circunstância do
acidente, e preparando uma base apta a alimentar um modelo classificatório
explicável.

**Público-alvo:** gestores de segurança viária e equipes de fiscalização
interessadas em priorizar trechos, períodos e situações de maior risco. Em
segundo plano, o público acadêmico do curso, como demonstração do ciclo completo
de preparação de dados.

## 3. Dados e Variável-Alvo

**Fonte:** Dados Abertos da PRF, base DATATRAN, ano de 2025.
**Granularidade:** uma linha por ocorrência de acidente.
**Volume inicial:** 72.529 linhas e 30 colunas.

**Variável-alvo:** `acidente_fatal`, binária, definida como 1 quando
`mortos >= 1` e 0 quando `mortos = 0`.

**Classificação inicial das variáveis:**

| Grupo | Exemplos | Uso analítico |
|---|---|---|
| Temporais | `data_inversa`, `horario`, `dia_semana` | Padrões no tempo |
| Geográficas | `uf`, `br`, `municipio`, `km` | Localização do problema |
| Explicativas do acidente | `causa_acidente`, `tipo_acidente`, `fase_dia`, `tipo_pista`, `tracado_via`, `condicao_metereologica`, `uso_solo` | Contexto da ocorrência |
| Gravidade e desfecho | `mortos`, `feridos`, `feridos_graves`, `pessoas`, `classificacao_acidente` | Consequências, não podem ser usadas como explicativas |

O último grupo merece atenção especial. Essas colunas descrevem o resultado do
acidente e, portanto, carregam a própria resposta. Usá-las como variáveis
explicativas produziria vazamento de dados (data leakage), e por isso elas foram
excluídas da base modelável na Unidade 4.

**Indicadores iniciais:**

| Indicador | Valor |
|---|---|
| Total de acidentes | 72.529 |
| Acidentes fatais | 5.210 |
| Taxa global de fatalidade | 7,2% |
| Total de mortos | 6.043 |

## 4. Perguntas Orientadoras e Hipóteses

### Perguntas orientadoras

1. Quais UFs e quais rodovias federais concentram a maior taxa de acidentes
   fatais, e como esse ranking muda quando se olha volume absoluto em vez de taxa?
2. Como a taxa de fatalidade se distribui ao longo dos meses de 2025 e ao longo
   das faixas horárias do dia?
3. Quais tipos de acidente apresentam taxa de fatalidade acima da média geral de
   7,2%, e qual a magnitude dessa diferença?
4. Quais causas registradas pelo agente estão mais associadas a desfechos fatais?
5. A condição meteorológica altera a taxa de fatalidade, ou apenas o volume de
   acidentes?
6. Pistas simples apresentam taxa de fatalidade maior que pistas duplas ou
   múltiplas?
7. A fase do dia (pleno dia, plena noite, amanhecer, anoitecer) muda o risco de
   morte, isoladamente e combinada com o tipo de pista?

### Hipóteses iniciais

<!-- EDITAR: registre aqui as 5 a 8 hipóteses levantadas em grupo ANTES de olhar
os dados. O valor delas está justamente em terem sido escritas antes, para depois
comparar percepção inicial com evidência. Modelo de escrita abaixo. -->

| # | Hipótese | Confirmada pelos dados? |
|---|---|---|
| 1 | Acidentes noturnos têm maior chance de serem fatais que os diurnos | a verificar |
| 2 | Colisões frontais são o tipo mais letal | a verificar |
| 3 | Pistas simples concentram desfechos mais graves que pistas duplas | a verificar |
| 4 | | |
| 5 | | |

## 5. Limites e Relação com o CRISP-DM

### Limitações iniciais

- A base cobre apenas rodovias federais. Acidentes em vias estaduais e
  municipais ficam fora do escopo e as conclusões não podem ser generalizadas
  para toda a malha viária.
- A causa do acidente é declarada pelo agente que atende a ocorrência, o que
  envolve julgamento e pode variar entre registros semelhantes.
- A base não traz informações sobre velocidade no momento do acidente, uso de
  equipamentos de segurança, estado do veículo ou condição do condutor.
- Não há informação sobre o volume de tráfego de cada trecho, então uma rodovia
  pode aparecer no topo do ranking simplesmente por ter mais movimento.
- Os dados descrevem associação, não causalidade. Nenhuma conclusão deste projeto
  afirma que um fator causa a morte no acidente.

<!-- EDITAR: acrescente aqui qualquer limitação específica que vocês discutiram
em aula. -->

### Relação com as fases do CRISP-DM

| Fase | Onde acontece neste projeto |
|---|---|
| Entendimento do negócio | Este documento (Unidade 1) |
| Entendimento dos dados | Exploração no Excel (Unidade 2) e consultas SQL (Unidade 3) |
| Preparação dos dados | Notebook em Python (Unidade 4), com base analítica e base modelável |
| Modelagem | Etapa seguinte, árvore de decisão explicável sobre a base modelável |
| Avaliação | Comparação das hipóteses da seção 4 com a evidência obtida |
| Implantação | Dashboard em Power BI alimentado pela base analítica |
