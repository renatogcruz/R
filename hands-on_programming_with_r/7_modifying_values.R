# 7 Modifying Values

# 7.0.1 Mudança de valores no local
# Podemos usar o sistema de notação de R para modificar valores dentro de um
# objeto R

vec <- c(0, 0, 0, 0, 0, 0)
vec

# selecionando o primeiro valor de vec
vec[1]

# modificando primeiro valor de vec
vec[1] <- 1000
vec

# podemos modificar vários valores de uma vez
vec[c(1, 3, 5)] <- c(1, 1, 1)
vec

vec[4:6] <- vec[4:6] + 1
vec

# Podemos criar um valor novo
vec[7] <- 0
vec


setwd("C:/Users/Renato/OneDrive/github/R/hands-on_programming_with_r")
deck <- read.csv('deck.csv')

head(deck)

deck2 <- deck[1:52,] #copiando
head(deck2)

deck2$new <- 1:52    #adicionando nova coluna (new)
head(deck2)

deck2$new <- NULL    #removendo coluna (new)
head(deck2)


deck2[c(13, 26, 39, 52), ]

deck2[c(13, 26, 39, 52), 3]
deck2$value[c(13, 26, 39, 52)]

# Atribuindo novo conjunto de valores a esses valores antigos
deck2$value[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)

#or
#deck2$value[c(13, 26, 39, 52)] <- 14

# Observe que os valores mudam no local. Você não acaba com uma cópia modificada
# de deck2, os novos valores aparecerão dentro de deck2

head(deck2, 13)

# função shuffle (embaralhar)

shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}

deck3 <- shuffle(deck)

# onde estão os ases agora?
head(deck3)

# 7.0.2 Subsetting lógico






