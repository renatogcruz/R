# Cap�tulo 2 - trabalhando com pacotes - p�gina 31

# pacote dataset
library('datasets')

# mostrando as primeiras linhas do dataset
head(airquality)

# monstrando as �ltimas linhas do dataset
tail(airquality)

# a sa�da NA significa a que uma entrada de dados espec�fica est� ausente
mean(airquality$Ozone)

# rm em na.rm significa 'remova' e =TRUE significa 'resolva'
mean(airquality$Ozone, na.rm=TRUE)

# SUBCONJUNTOS
# podemos selecionar apenas parte de um quadro
Months.Day.Ozone <- subset(airquality,
                           select = c(Month, Day, Ozone))

head(Months.Day.Ozone)

# o argumento subset() tamb�m permite selecionar linhas
August.Ozone <- subset(airquality, Month == 8, 
                       select = c(Month, Day, Ozone))

head(August.Ozone)

# FORM�LAS DE R

# estrutura b�sice de uma f�rmula em R
# function(dependent_var ~ independent_var, data=data.frame)

# rela��o Temp e Month
analysis <- lm(Temp ~ Month, data=airquality)

analysis

# para ver os resultados da an�lise usa-se o summary()
summary(analysis)

# o resultado de summary() � uma lista. Ent�o, podemos referir a Estimate
# para Month assim:
s <- summary(analysis)
s$coefficients[2,1]

# PACOTE TIDYVERSE
# pacote usado para gerenciar dados

library("tidyverse")

# uma das fun��ews do tidyverse � o tidyr
library('tidyr')
# drop_na exclui as linhas do quadro de dados que possuem dados ausentes
aq.no.missing <- drop_na(airquality)

head(aq.no.missing)

# outro pacote � o tibble que possuem fun��es que ajudam a modificar os dataframe










