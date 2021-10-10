# Capítulo 2 - trabalhando com pacotes - página 31

# pacote dataset
library('datasets')

# mostrando as primeiras linhas do dataset
head(airquality)

# monstrando as últimas linhas do dataset
tail(airquality)

# a saída NA significa a que uma entrada de dados específica está ausente
mean(airquality$Ozone)

# rm em na.rm significa 'remova' e =TRUE significa 'resolva'
mean(airquality$Ozone, na.rm=TRUE)

# SUBCONJUNTOS
# podemos selecionar apenas parte de um quadro
Months.Day.Ozone <- subset(airquality,
                           select = c(Month, Day, Ozone))

head(Months.Day.Ozone)

# o argumento subset() também permite selecionar linhas
August.Ozone <- subset(airquality, Month == 8, 
                       select = c(Month, Day, Ozone))

head(August.Ozone)

# FORMÚLAS DE R

# estrutura básice de uma fórmula em R
# function(dependent_var ~ independent_var, data=data.frame)

# relação Temp e Month
analysis <- lm(Temp ~ Month, data=airquality)

analysis

# para ver os resultados da análise usa-se o summary()
summary(analysis)

# o resultado de summary() é uma lista. Então, podemos referir a Estimate
# para Month assim:
s <- summary(analysis)
s$coefficients[2,1]

# PACOTE TIDYVERSE
# pacote usado para gerenciar dados

library("tidyverse")

# uma das funçõews do tidyverse é o tidyr
library('tidyr')
# drop_na exclui as linhas do quadro de dados que possuem dados ausentes
aq.no.missing <- drop_na(airquality)

head(aq.no.missing)

# outro pacote é o tibble que possuem funções que ajudam a modificar os dataframe










