#################### Carregando pacotes ####################

if (!require(dplyr))
  install.packages("dplyr")

library(dplyr)


############### Carregando o banco de dados ###############

# Passo 1: selecionar o diret�rio de trabalho (working directory)


## Op��o 1 - Manualmente: Session > Set Working Directory > Choose Directory

## Op��o 2:
setwd("C:/Users/Renato/OneDrive/github/R/Curso_estatistica_aplicada_no_R")


# Passo 2: carregar o banco de dados

dados <- read.csv('Banco de Dados 2 Codificado.csv', sep = ';', dec = ',')


############### Visualizando o banco de dados ###############

View(dados)      # abre aba de visualiza��o 'dados'
glimpse(dados)   # mostra v�riaveis, tipos de vari�veis, etc


############### Ajustando as vari�veis ###############

# Transformando G�nero em fator:

dados$Genero <- factor(dados$Genero, label = c("M", "F"), levels = c(0, 1))


# Transformando Grau de Instru��o em fator:

dados$Grau_de_Instru�ao <- factor(dados$Grau_de_Instru�ao,
                                  label = c("Fundamental", "Medio", "Superior"),
                                  levels = 0:2, order = T)


# Codificando valores ausentes (missing values):

dados[dados==-999] <- NA

glimpse(dados)   # mostra v�riaveis, tipos de vari�veis, etc
