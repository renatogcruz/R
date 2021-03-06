# 6 R Notation
# 
# Queremos distribuir cartas do baralho - uma carta por vez, qualquer que seja
# a carta no topo


setwd("C:/Users/Renato/OneDrive/github/R/hands-on_programming_with_r")

deck <- read.csv('deck.csv', sep = ';', dec = ',')


#######################################################
# 5.10 Salvando dados
# salvando uma c�pia de deck 

write.csv(deck, file = "cards.csv", row.names = FALSE)
#######################################################


deck <- read.csv('deck.csv')

head(deck)

deck[1, 1]

# para extrair mais de um valor, use um vetor de inteiros positivos.
# Exemplo: deck[1, c(1, 2, 3)] ou  deck[1, 1:3]

deck[1, c(1, 2, 3)] # retornar� valores da primeira linha e primeira, 
                    # segunda e terceira colunas.

new <- deck[1, c(1, 2, 3)]
new


vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]

# drop = FALSE
# se selecionarmos 2 ou mais colunas, R retornar� um novo data frame

deck[1:2, 1:2]

# se selecionarmos uma �nica coluna, R retornar� um vetor

deck[1:2, 1]

# Se preferir um data frame, podemos adicionar o argumento drop=FALSE
deck[1:2, 1, drop = FALSE]

# 6.1.2 Inteiros negativos
# Fazem exatamente o oposto dos positivos durante a indexa��o.

# R retornar� todos os elementos, exceto os elementos em um �ndice negativo.
# deck[-1,1:3] retornar� tudo, exceto a primeira linha do deck

deck[-(2:52), 1:3]

# Inteiros negativos s�o uma maneira mais eficiente de criar um subconjunto
# do que os inteiros positivos se vc desejar incluir a maioria das linhas ou 
# colunas de um dataframe


# 6.1.3 Zero
# Criar� um objeto vazio

deck[0, 0]
# indexar com zero n�o � muito �til

# 6.1.4 Espa�os em branco
# Um espa�o em branco extrai todos os valores em uma dimens�o

deck[1, ]

# 6.1.5 Valores L�gicos
deck[1, c(TRUE, TRUE, FALSE)]

rows <- c(TRUE, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, F, F)
deck[rows, ]

# 6.1.6 Nomes

deck[1, c("face", "suit", "value")]

# the entire value column
deck[, "value"]


# 6.2 Distribuir uma carta

deal <- function(cards){
  cards[1,]
}

deal(deck)
deal(deck)
deal(deck)

# deal sempre retorna o rei de espadas porque deck n�o sabe que distribu�mos a 
# carta
# O rei de espadas permanece onde est�, no topo do baralho

# 6.3 Embaralhar o baralho
# Ao embaralhar um  baralho real, vc reorganiza aleatoriamente a ordem das cartas.
# No deck virtual, cada carta � uma linha. Para embaralhar, precisamos reordenar
# aleatoriamente as linhas no quadro de dados.

deck2 <- deck[1:52,] #copiando
head(deck2)

deck3 <- deck[c(2, 1, 3:52), ] #retiramos uma carta
head(deck3)

random <- sample(1:52, size = 52) # fun��o randondomica
random

deck4 <- deck[random, ]
head(deck4)

# Exerc�cio 6.2 (embaralhando um baralho)
# criando a fun��o shuffle (embaralhar)

shuffle <- function(cards){
  random <- sample(1:52, size = 52)
  cards[random, ]
}

# agora podemos distribuir as cartas
deal(deck)

deck2 <- shuffle(deck)

deal(deck2)

# 6.4 Sinais "$" e colchetes duplos

# Para selecionar uma coluna de um quadro de dados, escreva o nome do dataframe
# e o nome da coluna separados por um $

deck$value # NOME_DATAFRAME$NOME_DA_COLUNA

# R retornar� todos os valores na coluna como um vetor

mean(deck$value)
median(deck$value)

# Tbm d� pra usar com listas

lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst

lst$numbers
lst$logical
lst$strings

lst[1]
lst$numbers
sum(lst$numbers)












