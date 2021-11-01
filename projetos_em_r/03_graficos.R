# formato geral

#graphics_function(data, argument1, argument2, ...)

# HISTOGRAMAS
# uma maneira de encontrar tend�ncias nos dados � examinar as frequ~encias dos 
# valores.
# palavra-chave: frequ�ncia
library(tidyverse)
library(ggplot2)
library(datasets)

head(airquality)

# histograma para mostrar a frequ�ncias das temperaturas
hist(airquality$Temp)

hist(airquality$Temp, xlab = "Temperature (Degrees Fahrenheit)", main = "temperature in New York City May 1 - September 30, 1973")

# ao criar um histograma, R calcula o n�mero ideal de colunas para uma apar�ncia 
# agrad�vel

# GR�FICO DE DENSIDADE
# outra maneira de monstrar as informa��es � pensar em termos de probabilidades
# Em vez de frequ�ncia de temperaturas entre 60 e 70 graus, podemos registrar a 
# probabilidade de que uma temperatura selecionada dos dados esteja nesse intervalo

probability = TRUE

hist(airquality$Temp,xlab = "Temperature (Degrees Fahrenheit)", 
     main = "Temperature in New York City May 1 - September 30, 1973", 
     probability = TRUE)

# fun��o lines() para adicionar uma linha ao gr�fico de densidade
lines(density((airquality$Temp)))

# GR�FICOS DE BARRAS
# um histograma mostra frequ�ncias quando a vari�vel no eixo x � n�merica. 
# Quando as entradas no eixo x s�o categoricas � chamada de gr�fico de barras

library(MASS)
head(Cars93[1:3])

# para mostrar a frequ�ncia de cada Type, crio um gr�fico de barras. Primeiro
# precisamos criar uma tabela das frequ�ncias. A fun��o table() faz isso:
table(Cars93$Type)

# A fun��o barplot() desenha o gr�fico
barplot(table(Cars93$Type))

# adicionando alguns argumentos
ylim = c(0,25)
xlab = "Type"
ylab = 'Frequency'

axis.lty = "solid"
space = .5
barplot(table(Cars93$Type), 
        ylim=c(0,25), 
         xlab="Type", 
         ylab="Frequency", 
         axis.lty="solid", 
         space=.5)

# AGRUPANDO AS BARRAS
library(datasets)
females <- HairEyeColor[,,2]
females

# especificando as cores nas barras e na legenda
color.names=c("black","grey40", "grey80", "white")

# podemos configurar grey com qualquer valor de 0 a 100

# transpondo as linhas e colunas
t(females) 

# a fun��o que produz o gr�ficos de barras �:
barplot(t(females), beside=T, ylim=c(0,70), 
         xlab="Hair Color",
         ylab="Frequency of Eye Color", 
         col=color.names, 
         axis.lty="solid")

# beside=T instrui R a plotar as barras lado a lado

# insedindo legenda
legend("Top", rownames(t(femeles)), cex=0.8, fill=color.names, title="Eye Color")

# GR�FICOS DE PIZZA
library(MASS)
pie(table(Cars93$Type))

# GR�FICOS DE DISPERS�O
# serve para visualizar a rela��o entre duas vari�veis
library(datasets)
plot(airquality$Wind, 
     airquality$Temp, 
     pch=16, 
     xlab="Wind Velocity (MPH)", 
     ylab="Temperature (Fahrenheit", 
     main="Temperature vs Wind Velocity")

# pch especifica o preto como a cor dos pontos

# F�rmula que monstre Temp como dependente de wind:
plot(airquality$Wind ~ airquality$Temp, 
     pch=16, 
     xlab="Wind Velocity (MPH)", 
     ylab="Temperature (Fahrenheit", 
     main="Temperature vs Wind Velocity")

# MATRIZ DO GR�FICO DE DISPERS�O
# mostrar como Ozone, Temp e Wind est�o relacionados em airquality.
# Examinar como est�o relacionados significa observar todos os relacionamentos
# de pares entre os tr�s

Ozone.Temp.Wind <- subset(airquality,select=c(Ozone, Temp, Wind))
head(Ozone.Temp.Wind)

# a fun��o pairs() para desenhar a matriz
pairs(Ozone.Temp.Wind)

#DIAGRMA DE BAIXA (BOXPLOT)
boxplot(Temp ~ Month, data=airquality, xaxt="n")

# o terceiro argumentosuprime osr�tulos que normalmente apareceriam
# explica��o sobre o gr�fico nas paginas 54 e 55

axis(1, at=1:5, labels=c("May", "June", "July", "August", "September"))

# EVOLUINDO PARA O GGPLOT2 - p�gina 55






















