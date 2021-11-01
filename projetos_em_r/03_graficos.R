# formato geral

#graphics_function(data, argument1, argument2, ...)

# HISTOGRAMAS
# uma maneira de encontrar tendências nos dados é examinar as frequ~encias dos 
# valores.
# palavra-chave: frequência
library(tidyverse)
library(ggplot2)
library(datasets)

head(airquality)

# histograma para mostrar a frequências das temperaturas
hist(airquality$Temp)

hist(airquality$Temp, xlab = "Temperature (Degrees Fahrenheit)", main = "temperature in New York City May 1 - September 30, 1973")

# ao criar um histograma, R calcula o número ideal de colunas para uma aparência 
# agradável

# GRÁFICO DE DENSIDADE
# outra maneira de monstrar as informações é pensar em termos de probabilidades
# Em vez de frequência de temperaturas entre 60 e 70 graus, podemos registrar a 
# probabilidade de que uma temperatura selecionada dos dados esteja nesse intervalo

probability = TRUE

hist(airquality$Temp,xlab = "Temperature (Degrees Fahrenheit)", 
     main = "Temperature in New York City May 1 - September 30, 1973", 
     probability = TRUE)

# função lines() para adicionar uma linha ao gráfico de densidade
lines(density((airquality$Temp)))

# GRÁFICOS DE BARRAS
# um histograma mostra frequências quando a variável no eixo x é númerica. 
# Quando as entradas no eixo x são categoricas é chamada de gráfico de barras

library(MASS)
head(Cars93[1:3])

# para mostrar a frequência de cada Type, crio um gráfico de barras. Primeiro
# precisamos criar uma tabela das frequências. A função table() faz isso:
table(Cars93$Type)

# A função barplot() desenha o gráfico
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

# a função que produz o gráficos de barras é:
barplot(t(females), beside=T, ylim=c(0,70), 
         xlab="Hair Color",
         ylab="Frequency of Eye Color", 
         col=color.names, 
         axis.lty="solid")

# beside=T instrui R a plotar as barras lado a lado

# insedindo legenda
legend("Top", rownames(t(femeles)), cex=0.8, fill=color.names, title="Eye Color")

# GRÁFICOS DE PIZZA
library(MASS)
pie(table(Cars93$Type))

# GRÁFICOS DE DISPERSÃO
# serve para visualizar a relação entre duas variáveis
library(datasets)
plot(airquality$Wind, 
     airquality$Temp, 
     pch=16, 
     xlab="Wind Velocity (MPH)", 
     ylab="Temperature (Fahrenheit", 
     main="Temperature vs Wind Velocity")

# pch especifica o preto como a cor dos pontos

# Fórmula que monstre Temp como dependente de wind:
plot(airquality$Wind ~ airquality$Temp, 
     pch=16, 
     xlab="Wind Velocity (MPH)", 
     ylab="Temperature (Fahrenheit", 
     main="Temperature vs Wind Velocity")

# MATRIZ DO GRÁFICO DE DISPERSÃO
# mostrar como Ozone, Temp e Wind estão relacionados em airquality.
# Examinar como estão relacionados significa observar todos os relacionamentos
# de pares entre os três

Ozone.Temp.Wind <- subset(airquality,select=c(Ozone, Temp, Wind))
head(Ozone.Temp.Wind)

# a função pairs() para desenhar a matriz
pairs(Ozone.Temp.Wind)

#DIAGRMA DE BAIXA (BOXPLOT)
boxplot(Temp ~ Month, data=airquality, xaxt="n")

# o terceiro argumentosuprime osrótulos que normalmente apareceriam
# explicação sobre o gráfico nas paginas 54 e 55

axis(1, at=1:5, labels=c("May", "June", "July", "August", "September"))

# EVOLUINDO PARA O GGPLOT2 - página 55























