######################### Teste t para uma Amostra #########################


# Passo 1: Carregar os pacotes que serão usados

if(!require(dplyr)) install.packages("dplyr") # Instalação do pacote caso não esteja instalado
library(dplyr)                                # Carregamento do pacote


# Passo 2: Carregar o banco de dados

# Importante: selecionar o diretório de trabalho (working directory)
# Isso pode ser feito manualmente: Session > Set Working Directory > Choose Directory
# Ou usando a linha de código abaixo:

setwd("C:/Users/Renato/OneDrive/github/R/Curso_estatistica_aplicada_no_R")

dados <- read.csv('Dados_a4.csv', sep = ';', dec = ',')   # Carregamento do arquivo csv
View(dados)                                                       # Visualização dos dados em janela separada
glimpse(dados)                                                    # Visualização de um resumo dos dados


# Passo 3: Verificação da normalidade dos dados

shapiro.test(dados$Altura)

## H0: distruibuição dos dados = normal -> p > 0.05
## H1: distruibuição dos dados != normal -> p <= 0.05
## como p-value deste teste é maior que 0.05, vamos aceitar esses dados como normal
## ou seja, estes dados tem distruição normal (não rejeitar a hipótese nula)

# Passo 4: Realização do teste t para uma amostra

t.test(dados$Altura, mu = 167) # mu = valor -> valor de referência (1,67 altura média)


# Observação:
# O teste bicaudal é o default; caso deseje unicaudal, necessário incluir:
# alternative = "greater" ou alternative = "less"
# Exemplo: t.test(dados$Altura, mu = 167, alternative = "greater")
# Nesse caso, o teste verificará se é a média amostral é maior que a média testada

# O teste-t para uma amostra mostrou que a média
# de altura da amostra (168.43 cm) não é diferente
# da média de altura nacional (167 cm) (t(29) = 0.702; p = 0.488)


# Passo 5 (opcional): Visualização da distribuição dos dados

boxplot(dados$Altura, ylab = "Altura (cm)")