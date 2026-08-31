# Análise de Acidentes e Mortes em Rodovias Federais

*Unidade 5, Módulo 2 | Autores: Alex Lopes & Thyago Antonio | Base: PRF 2025 + IBGE 2025*

O presente relatório examina os registros de acidentes ocorridos em rodovias federais brasileiras durante o ano de 2025, a partir da base da Polícia Rodoviária Federal (PRF) cruzada com as estimativas populacionais do Instituto Brasileiro de Geografia e Estatística (IBGE) para o mesmo período. O objetivo central consiste em verificar em que medida a percepção corrente sobre o risco no trânsito rodoviário se sustenta quando confrontada com os dados observados.

A análise parte de uma premissa metodológica elementar: números absolutos e taxas proporcionais descrevem fenômenos distintos e, portanto, não podem ser lidos de forma intercambiável. Uma unidade federativa pode liderar o volume nacional de ocorrências e, simultaneamente, apresentar um dos menores riscos de morte do país. Por essa razão, o trabalho percorre sucessivamente cinco dimensões do fenômeno: volume, severidade, risco populacional, natureza da colisão e distribuição temporal. Demonstra-se que cada uma dessas dimensões produz um ordenamento diferente dos estados e das rodovias.

Todos os dados utilizados provêm do arquivo **atividade2_completo.xlsx**, e a integralidade dos cálculos apresentados é reproduzível por meio do notebook que acompanha este relatório.

> **Panorama geral do ano**
>
> Em 2025 foram registrados **72.529 acidentes** em rodovias federais. Destes, **5.209 resultaram em ao menos uma morte**, totalizando **6.043 óbitos**. A letalidade nacional situa-se em **7,18%**, com média de **1,16 morto por acidente fatal**. Esses quatro indicadores constituem a referência contra a qual todos os recortes subsequentes são comparados.

## 1. A distribuição do volume de acidentes por unidade federativa

A análise inicia-se pelos números absolutos de ocorrências em cada unidade federativa, desconsiderando temporariamente o porte populacional dos estados. Trata-se de determinar onde se concentra a maior quantidade de colisões registradas.

Minas Gerais lidera o ranking nacional com 9.570 acidentes, o equivalente a mais de 13% de todas as ocorrências em rodovias federais do país. Santa Catarina ocupa a segunda posição, com 8.186 acidentes. O dado merece destaque, uma vez que o estado possui extensão territorial consideravelmente inferior à de Minas Gerais, São Paulo ou Bahia, mas registra volume próximo ao do primeiro colocado. Completam as primeiras posições o Paraná (7.630), o Rio de Janeiro (6.428) e o Rio Grande do Sul (4.899).

O caso de São Paulo contraria frontalmente a expectativa. Detentor da maior população do país, com mais de 46 milhões de habitantes, o estado registrou apenas 4.683 acidentes em rodovias federais no período, número inferior à metade do observado em Minas Gerais e próximo à metade do volume catarinense. Proporcionalmente ao seu porte, as rodovias federais paulistas apresentam desempenho substancialmente superior à média nacional, hipótese retomada e qualificada nas seções 3 e 10.

| UF | População (IBGE 2025) | Acidentes Totais | % Nacional | Acidentes Fatais | Total Mortos | Letalidade |
| --- | --- | --- | --- | --- | --- | --- |
| MG | 21.393.441 | 9.570 | 13,2% | 647 | 765 | 6,8% |
| SC | 8.187.029 | 8.186 | 11,3% | 374 | 434 | 4,6% |
| PR | 11.890.517 | 7.630 | 10,5% | 511 | 593 | 6,7% |
| RJ | 17.223.547 | 6.428 | 8,9% | 306 | 330 | 4,8% |
| RS | 11.233.263 | 4.899 | 6,8% | 275 | 327 | 5,6% |
| **SP** | **46.081.801** | **4.683** | **6,5%** | **205** | **221** | **4,4%** |

*Tabela 1: Estados com maiores volumes acumulados de acidentes, com São Paulo destacado para comparação. Fonte: PRF/IBGE.*

Os cinco estados de maior volume respondem, somados, por 50,6% dos acidentes registrados no país, mas por apenas 40,5% das mortes. Esse descompasso entre frequência e letalidade constitui o eixo condutor de toda a análise subsequente.

## 2. A severidade das ocorrências: a taxa de letalidade

A comparação entre unidades federativas exige distinguir a frequência das ocorrências de sua gravidade. Colisões de baixa energia em trânsito congestionado e colisões de alta energia em pista simples constituem fenômenos de naturezas distintas, ainda que ambos figurem como uma unidade no mesmo registro estatístico. A taxa de letalidade, definida como a proporção de acidentes que resultam em ao menos uma morte, permite mensurar o grau de violência das ocorrências e identificar onde a via se mostra menos tolerante a falhas humanas ou mecânicas.

O Maranhão apresenta a maior taxa de letalidade do país: 18,7%. Em termos práticos, aproximadamente um em cada cinco acidentes ocorridos nas rodovias federais maranhenses resulta em óbito. Foram 236 acidentes fatais em 1.262 ocorrências, com 281 vítimas. O Pará ocupa a segunda posição, com 17,3% (193 acidentes fatais em 1.117 ocorrências e 224 mortos), seguido por Roraima (16,2%), Amazonas (13,8%) e Alagoas (13,7%).

Santa Catarina, apesar do elevado volume identificado na seção anterior, apresenta letalidade de apenas 4,6%, valor significativamente inferior à média nacional de 7,18%. A leitura conjunta dos dois indicadores sugere que predominam no estado acidentes de baixa energia, tais como colisões traseiras em fluxo congestionado, característicos de trechos litorâneos em período de veraneio, que raramente resultam em fatalidade. Nas regiões Norte e Nordeste observa-se o padrão inverso: menor frequência absoluta de ocorrências, porém probabilidade substancialmente maior de que cada uma delas seja fatal.

Tais resultados são compatíveis com a hipótese de rodovias de pista simples sem separação física entre os sentidos, deficiência de iluminação e maior distância até unidades hospitalares de alta complexidade, fator reconhecido na literatura de atendimento pré-hospitalar como determinante da sobrevivência da vítima. Os cinco cenários mais críticos encontram-se isolados na tabela a seguir.

| UF | Acidentes Totais | Acidentes Fatais | Total de Mortes | Taxa de Letalidade | Mortos por acidente fatal |
| --- | --- | --- | --- | --- | --- |
| MA | 1.262 | 236 | 281 | 18,7% | 1,19 |
| PA | 1.117 | 193 | 224 | 17,3% | 1,16 |
| RR | 142 | 23 | 28 | 16,2% | 1,22 |
| AM | 138 | 19 | 26 | 13,8% | 1,37 |
| AL | 629 | 86 | 96 | 13,7% | 1,12 |
| **Brasil** | **72.529** | **5.209** | **6.043** | **7,18%** | **1,16** |

*Tabela 2: Os cinco estados com as maiores taxas de letalidade em rodovias federais, comparados à média nacional. Fonte: PRF.*

> **Nota metodológica**
>
> A letalidade adotada neste relatório corresponde a **acidentes fatais ÷ acidentes totais**, e não a **mortos ÷ acidentes**. A distinção é necessária porque um único acidente pode vitimar mais de uma pessoa. No caso maranhense, a razão 236÷1.262 resulta nos 18,7% aqui empregados, ao passo que 281÷1.262 resultaria em 22,3%, indicador que mede grandeza diversa (mortes por acidente ocorrido). Ambos são legítimos, mas sua combinação em um mesmo ranking comprometeria a comparabilidade. Adotou-se, portanto, a primeira definição em todo o documento.

## 3. O risco por habitante: taxas por 100 mil habitantes

A comparação entre unidades federativas de portes demográficos distintos exige a padronização dos indicadores pela população. Estados populosos tendem a acumular mais ocorrências pela simples razão de possuírem maior contingente de motoristas e passageiros em circulação. O cálculo das taxas por grupo de 100 mil habitantes neutraliza esse efeito e constitui a medida mais adequada para estimar o risco a que se encontra exposto o morador de cada estado.

Sob esse critério, o Tocantins figura como a unidade federativa de maior risco do país, com 6,4 mortes por 100 mil habitantes, seguido por Mato Grosso (6,2), Rondônia (5,8), Santa Catarina (5,3) e Mato Grosso do Sul (5,1). Paraná e Piauí aparecem imediatamente a seguir, ambos com 5,0. A proximidade entre esses valores recomenda a apresentação do bloco completo, e não o corte arbitrário no quinto colocado.

No extremo oposto encontra-se novamente São Paulo, com 0,5 morte por 100 mil habitantes. O risco de morte em rodovia federal no estado paulista é, portanto, cerca de treze vezes inferior ao registrado no Tocantins. O contraste evidencia o caráter profundamente desigual da segurança viária brasileira, condicionada de modo determinante à região em que se trafega.

| UF | População | Acidentes | Total Mortos | Acidentes / 100k hab. | Mortos / 100k hab. |
| --- | --- | --- | --- | --- | --- |
| TO | 1.586.859 | 677 | 102 | 42,7 | 6,4 |
| MT | 3.893.659 | 2.636 | 243 | 67,7 | 6,2 |
| RO | 1.751.950 | 1.452 | 102 | 82,9 | 5,8 |
| SC | 8.187.029 | 8.186 | 434 | 100,0 | 5,3 |
| MS | 2.924.631 | 1.654 | 150 | 56,6 | 5,1 |
| PR | 11.890.517 | 7.630 | 593 | 64,2 | 5,0 |
| **SP** | **46.081.801** | **4.683** | **221** | **10,2** | **0,5** |

*Tabela 3: Taxas padronizadas por 100 mil habitantes. Comparam-se os maiores riscos populacionais com o melhor cenário nacional. Fonte: IBGE/PRF.*

Merece registro um aparente paradoxo na coluna de acidentes por 100 mil habitantes: Rondônia apresenta 82,9 ocorrências, enquanto Santa Catarina registra 100,0. Ainda assim, o estado catarinense, com mais acidentes por habitante, apresenta menos mortes por habitante. A seção 8 demonstra que essa relação não é fortuita, mas um padrão verificável em escala nacional.

## 4. Casos particulares de interesse analítico

O exame da tabela completa revela unidades federativas cujo comportamento enriquece a compreensão do fenômeno. A Bahia constitui o primeiro caso relevante: em volume bruto o estado não figura entre os primeiros colocados, ocupando a sétima posição com 4.108 acidentes, mas registrou 583 óbitos, o terceiro maior número absoluto do país, atrás apenas de Minas Gerais (765) e do Paraná (593). Com letalidade de 11,6%, mais de um em cada dez acidentes baianos resulta em morte. Trata-se de estado de grande extensão territorial, que funciona como eixo de ligação para toda a região Nordeste, o que reforça a pertinência de investimentos estruturais em sua malha federal.

O Distrito Federal apresenta comportamento oposto e igualmente instrutivo. Foram registrados 1.011 acidentes para uma população próxima a três milhões de habitantes, com apenas 47 óbitos. A letalidade resultante, de 4,3%, é a menor do Brasil, inferior inclusive à paulista (4,4%), assim como a taxa de 1,6 morte por 100 mil habitantes. O resultado é coerente com as características da unidade: por constituir território intensamente urbanizado, as rodovias federais que o atravessam possuem múltiplas faixas e separação física entre sentidos, configuração que produz colisões cotidianas decorrentes do fluxo intenso, porém torna raras as colisões frontais de alta velocidade.

A comparação entre Acre e Amapá, unidades vizinhas de porte populacional semelhante, permite isolar o efeito da infraestrutura local. O Acre, com 884 mil habitantes, registrou 280 acidentes e 29 mortes, resultando em letalidade de 10,4%. O Amapá, com 806 mil habitantes, registrou 169 acidentes e 14 mortes, com letalidade de 5,3%. Perfis populacionais equivalentes produziram, portanto, riscos de morte que diferem por fator aproximado de dois, o que sugere a relevância de fatores geográficos, de conservação do pavimento e de sinalização.

O Amazonas, por fim, ilustra os limites da interpretação isolada de um indicador. O estado apresenta 3,2 acidentes por 100 mil habitantes, a menor taxa nacional. O resultado não decorre de desempenho superior em segurança viária, mas da reduzida malha rodoviária federal de um território cujo transporte é predominantemente fluvial. A evidência dessa interpretação está na letalidade de 13,8%, uma das mais elevadas do país, verificada quando o acidente efetivamente ocorre.

## 5. A natureza da colisão: o tipo de acidente

A base de dados classifica cada ocorrência segundo a modalidade da colisão, dimensão que se revela mais determinante do que a localização geográfica. Constata-se que o tipo de acidente prediz a ocorrência de mortes com precisão superior à da unidade federativa em que ele se verifica.

A colisão traseira é, isoladamente, a modalidade mais frequente: 14.360 registros, próximos a 20% do total nacional. Sua letalidade, entretanto, é de apenas 4,3%. A colisão frontal, em contrapartida, representa 6,5% das ocorrências, mas responde por 1.863 óbitos, ou 30,8% de todas as mortes do período. Sua letalidade de 29,4% corresponde a aproximadamente quatro vezes a média nacional. Cada colisão frontal fatal vitima, em média, 1,34 pessoa, contra 1,16 da média geral, resultado esperado, dado que essa modalidade atinge simultaneamente os ocupantes de dois veículos.

O atropelamento de pedestre constitui a segunda modalidade crítica, com a maior letalidade registrada: 29,5%. A soma das duas modalidades produz o achado mais expressivo da análise: colisão frontal e atropelamento de pedestre correspondem a apenas 10,7% das ocorrências, mas concentram 46% de todas as mortes em rodovias federais. Praticamente metade das vidas perdidas encontra-se, portanto, em pouco mais de um décimo dos registros.

| Tipo de acidente | Acidentes | % dos acidentes | Mortos | % das mortes | Letalidade |
| --- | --- | --- | --- | --- | --- |
| Colisão traseira | 14.360 | 19,8% | 683 | 11,3% | 4,3% |
| Saída de leito carroçável | 10.209 | 14,1% | 700 | 11,6% | 5,9% |
| Colisão transversal | 9.306 | 12,8% | 481 | 8,0% | 4,6% |
| **Colisão frontal** | **4.739** | **6,5%** | **1.863** | **30,8%** | **29,4%** |
| **Atropelamento de pedestre** | **3.057** | **4,2%** | **919** | **15,2%** | **29,5%** |
| Incêndio | 1.771 | 2,4% | 0 | 0,0% | 0,0% |

*Tabela 4: Modalidades de maior volume e de maior letalidade. As duas linhas destacadas somam 10,7% dos acidentes e 46% das mortes. Fonte: PRF.*

A constatação altera substantivamente a formulação de políticas públicas de segurança viária. O combate genérico ao acidente mostra-se pouco eficiente. O que efetivamente reduz a mortalidade é a atuação dirigida sobre duas modalidades específicas: no caso da colisão frontal, isso implica duplicação de pista e instalação de barreira física central; no caso do atropelamento, implica passarelas, travessias iluminadas e moderação de velocidade em trechos de perímetro urbano. Registra-se, por fim, que os 1.771 incêndios em veículos não resultaram em nenhum óbito, o que reforça a interpretação de que a energia da colisão, e não o veículo em si, constitui o fator determinante da mortalidade.

## 6. A concentração por rodovia federal

A base disponibiliza ainda a desagregação por rodovia, recorte de maior utilidade operacional para a alocação de recursos públicos. A razão é objetiva: a unidade federativa não constitui unidade de obra, ao passo que um trecho de rodovia sim. É viável licitar a duplicação de um segmento da BR-116, mas não é viável licitar segurança viária em Minas Gerais.

A base contempla 115 rodovias federais, e a concentração observada é expressiva: as dez rodovias com maior número de óbitos respondem por 59,8% dos acidentes e 51,3% das mortes do país. Isoladamente, a BR-101 e a BR-116, principais eixos longitudinais do litoral e do interior, somam 24.035 acidentes, equivalentes a 33,1% do total nacional, e 1.468 óbitos.

O padrão identificado entre as unidades federativas reproduz-se no recorte por rodovia: as vias que mais matam em números absolutos não são as mais perigosas de trafegar. A BR-101 apresenta letalidade de 5,2%, inferior à média nacional. A BR-222, com volume aproximadamente vinte vezes menor, registra letalidade de 18,2%, a mais elevada do país entre rodovias de movimento relevante. A BR-316 configura caso análogo, com 1.236 acidentes e letalidade de 14,7%.

| Rodovia | Acidentes | Acidentes Fatais | Mortos | Letalidade | Perfil |
| --- | --- | --- | --- | --- | --- |
| BR-101 | 13.014 | 682 | 760 | 5,2% | Volume alto, risco baixo |
| BR-116 | 11.021 | 637 | 708 | 5,8% | Volume alto, risco baixo |
| BR-153 | 2.789 | 226 | 282 | 8,1% | Volume e risco médios |
| **BR-316** | **1.236** | **182** | **201** | **14,7%** | **Volume baixo, risco alto** |
| **BR-222** | **581** | **106** | **128** | **18,2%** | **Volume baixo, risco alto** |
| **BR-135** | **559** | **82** | **105** | **14,7%** | **Volume baixo, risco alto** |

*Tabela 5: Rodovias de maior volume comparadas às de maior letalidade. Consideraram-se apenas as BRs com 500 ou mais acidentes. Fonte: PRF.*

Configuram-se, portanto, duas listas de prioridade distintas, que demandam intervenções de naturezas diferentes. Nas BR-101 e BR-116 o desafio é de gestão de fluxo, uma vez que o volume elevado gera grande número de ocorrências de baixa gravidade. Nas BR-222, BR-316 e BR-135 o desafio é de sobrevivência, dado que aproximadamente uma em cada cinco ocorrências resulta em óbito.

## 7. A distribuição temporal: sazonalidade das ocorrências

A série mensal do período responde a uma dimensão que os recortes anteriores não alcançam: a variação do risco ao longo do ano. Também nesse plano volume e gravidade não se comportam de maneira solidária.

Dezembro concentra o maior volume, com 6.788 acidentes, resultado compatível com o período de festas, férias e deslocamento para o litoral. Fevereiro apresenta o menor volume, com 5.287 ocorrências. O mês de maior risco, contudo, não é dezembro, mas maio, que registra letalidade de 8,3% e 574 óbitos, segundo maior número absoluto do ano, obtido a partir de volume sensivelmente inferior ao de dezembro. O período concentra feriados prolongados e corresponde à redução da duração do dia no Centro-Sul, condição que amplia a exposição ao tráfego noturno em pista simples.

Na comparação entre semestres, o segundo apresenta desempenho nitidamente inferior: 37.750 acidentes e 3.154 óbitos entre julho e dezembro, contra 34.779 acidentes e 2.889 óbitos no primeiro semestre, o que representa elevação de 8,5% no volume e de 9,2% na mortalidade. O dado sustenta a recomendação de concentrar campanhas educativas e operações de fiscalização no calendário de maior risco, em detrimento de sua distribuição uniforme ao longo do ano. A representação gráfica da série consta do notebook que acompanha este relatório.

## 8. Verificação estatística da relação entre volume e severidade

A fim de submeter a interpretação a teste, calculou-se a correlação entre os indicadores. O coeficiente entre acidentes por 100 mil habitantes e taxa de letalidade é de -0,55, portanto negativo e de magnitude moderada a forte. O resultado indica que as unidades federativas em que se registram mais acidentes por habitante são, em média, aquelas em que menor proporção deles resulta em morte.

Simultaneamente, a correlação entre acidentes por 100 mil habitantes e mortos por 100 mil habitantes é de +0,73, positiva e forte. A leitura conjunta dos dois coeficientes conduz à conclusão mais precisa que os dados autorizam: o volume elevado de ocorrências continua produzindo mortes em termos populacionais, o que afasta qualquer complacência em estados como Santa Catarina; a violência de cada acidente, contudo, constitui problema autônomo, determinado por infraestrutura e capacidade de socorro, e não por intensidade de tráfego. Trata-se de dois fenômenos distintos, que demandam instrumentos igualmente distintos.

## 9. Conclusões

A análise dos dados permite consolidar quatro conclusões principais.

- **A frequência de acidentes não se converte diretamente em mortalidade.** Santa Catarina evidencia o argumento: rodovias saturadas, predominância de colisões de fluxo lento e letalidade de 4,6%. Maranhão e Pará apresentam frequência bruta muito inferior, porém probabilidade de óbito aproximadamente quatro vezes maior, atribuível a deficiências de infraestrutura e de atendimento de emergência.

- **A modalidade da colisão é mais determinante que a unidade federativa.** Colisão frontal e atropelamento de pedestre representam 10,7% das ocorrências e 46% das mortes. Políticas que não atuem especificamente sobre essas duas modalidades tendem a alocar recursos em segmentos de baixo retorno em vidas preservadas.

- **São Paulo constitui referência a ser estudada, com ressalva.** Ainda que abrigue o maior contingente populacional do país, o estado apresenta 0,5 morte por 100 mil habitantes e letalidade de 4,4%, o que sugere efeito positivo da duplicação com barreira central, do regime de concessões e da fiscalização eletrônica. Registre-se, contudo, que a menor letalidade nacional pertence ao Distrito Federal (4,3%) e que parte da vantagem paulista decorre de o tráfego pesado do estado concentrar-se em rodovias estaduais, não contempladas nesta base.

- **Não existe solução única para a segurança viária brasileira.** Na região Sul, o desafio predominante é de engenharia de tráfego, voltada à fluidez e à redução do volume de colisões de menor gravidade. Nas regiões Norte e Nordeste, a prioridade é a sobrevivência da vítima, o que implica duplicação, sinalização de pista simples e descentralização das bases de resgate. Em âmbito nacional, acrescenta-se a dimensão temporal, dado que o segundo semestre registra mortalidade 9,2% superior à do primeiro.

## 10. Limitações da análise e desdobramentos possíveis

A leitura dos resultados apresentados deve considerar quatro limitações da base utilizada, que delimitam o alcance das conclusões formuladas.

A primeira é de cobertura: a base contempla exclusivamente rodovias federais, excluindo as malhas estadual e municipal. Unidades federativas cujo tráfego pesado se concentra em rodovias estaduais, como São Paulo, tendem a apresentar desempenho artificialmente favorável neste recorte, razão pela qual sua condição de referência foi qualificada na seção 9.

A segunda diz respeito ao denominador das taxas padronizadas. O cálculo por 100 mil habitantes utiliza a população residente, e não o volume de tráfego ou a frota circulante. Estados que funcionam como corredores de passagem, como Tocantins e Mato Grosso, recebem fluxo de longa distância não representado em sua população, o que possivelmente superestima o risco atribuído ao morador local. A taxa por veículo ou por quilômetro percorrido constituiria indicador mais preciso, ainda que indisponível nesta base.

A terceira refere-se à ausência de variáveis causais. Os registros não informam consumo de álcool, excesso de velocidade, fadiga ou condições meteorológicas. Consequentemente, as explicações formuladas ao longo do relatório quanto a infraestrutura e tempo de socorro possuem natureza de hipótese compatível com os dados, e não de causalidade demonstrada.

A quarta é de natureza operacional: o registro de óbitos reflete as mortes apuradas no âmbito da ocorrência, de modo que falecimentos posteriores em ambiente hospitalar podem não estar integralmente computados. A letalidade real tende, portanto, a ser marginalmente superior à aqui apresentada, com efeito presumivelmente mais acentuado nas regiões de maior distância até unidades de alta complexidade.

A própria base permite três desdobramentos capazes de ampliar as conclusões obtidas. O cruzamento entre modalidade de colisão e unidade federativa possibilitaria testar a hipótese de que a região Norte concentra proporção superior de colisões frontais, o que explicaria sua letalidade elevada. O cruzamento entre modalidade e mês permitiria verificar se o pico de dezembro decorre de aumento uniforme das ocorrências ou da concentração de modalidades específicas. Por fim, o mapeamento das rodovias que atravessam os estados de maior letalidade permitiria confirmar a sobreposição, sugerida pelos dados, entre as BR-222 e BR-316 e os territórios do Maranhão e do Pará.

> **Fonte e reprodutibilidade**
>
> Os dados provêm de **atividade2_completo.xlsx**, referente às ocorrências registradas pela Polícia Rodoviária Federal em rodovias federais no ano de 2025, cruzadas com a estimativa populacional do IBGE para o mesmo período. As tabelas e o gráfico apresentados são integralmente reproduzidos pelo notebook **analise_acidentes_prf_2025.ipynb**.
