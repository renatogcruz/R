# instalando pacotes

## opção 1: através de "packages" no canto inferior direito

## opção 2:
install.packages("dplyr")

## opção 3:
if(!require(dplyr))         # se não (!) conseguir carregar o pacote "pacote":
  install.packages("dplyr") # instale o "pacote"

############### carregando pacotes ###############

library(car)
require(dplyr)

############### carregando o banco de dados ###############

# passo 1: selecionar o diretório de trabalho (working directory)

## opção 1 - manualmente: session > set working directory > choose directory

## opção 2:

setwd("C:/Users/Renato/OneDrive/github/R/Curso_estatistica_aplicada_no_R")

# passo 2: carregar o banco de dados

dados <- read.csv('Banco de Dados 2.csv', sep = ';', dec = ',')

## funções para visualizar o banco de dados:

View(dados)
glimpse(dados)

