# instalando pacotes

## op��o 1: atrav�s de "packages" no canto inferior direito

## op��o 2:
install.packages("dplyr")

## op��o 3:
if(!require(dplyr))         # se n�o (!) conseguir carregar o pacote "pacote":
  install.packages("dplyr") # instale o "pacote"

############### carregando pacotes ###############

library(car)
require(dplyr)

############### carregando o banco de dados ###############

# passo 1: selecionar o diret�rio de trabalho (working directory)

## op��o 1 - manualmente: session > set working directory > choose directory

## op��o 2:

setwd("C:/Users/Renato/OneDrive/github/R/Curso_estatistica_aplicada_no_R")

# passo 2: carregar o banco de dados

dados <- read.csv('Banco de Dados 2.csv', sep = ';', dec = ',')

## fun��es para visualizar o banco de dados:

View(dados)
glimpse(dados)

