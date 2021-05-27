# instalando pacotes

if(!require(ggplot2)) install.packages("ggplot2") # Instalação do pacote caso não esteja instalado
library(ggplot2)                                  # carregue o pacote ggplot2

qplot

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x

y <- x^3
y

qplot(x, y)


x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)

x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)

x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

# replicate - fornece uma maneira fácil de repetir um comando
replicate(3, 1 + 1) # (quantas vezes repetir, repetir o que?)

roll <- function(die = 1:6){
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

replicate(10, roll())

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)


# 3.2 Obtendo ajuda com as páginas de ajuda