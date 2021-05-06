# OBJETIVO: trabalhar com bases de dados

# Como?
# Utilizando data frames

# definir area de trabalho
setwd("caminho_da_pasta")

# importando base de dados
df <- read.csv("DataFrame.csv")

# Analisando um data frame
view(df)

# Tipos de dados
str(df)
summary(df)

# Selecionando variáveis
df
df[1]
df$DIA_SEM

col1 <- df[1]
col2 <- df$DIA_SEM

