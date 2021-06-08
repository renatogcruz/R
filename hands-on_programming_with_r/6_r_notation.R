# 6 R Notation
# 
# Queremos distribuir cartas do baralho - uma carta por vez, qualquer que seja
# a carta no topo


setwd("C:/Users/Renato/OneDrive/github/R/hands-on_programming_with_r")

deck <- read.csv('deck.csv', sep = ';', dec = ',')


#######################################################
# 5.10 Salvando dados
# salvando uma cópia de deck 

write.csv(deck, file = "cards.csv", row.names = FALSE)
#######################################################


deck <- read.csv('deck.csv')

head(deck)

deck[1, 1]

# para extrair mais de um valor, use um vetor de inteiros positivos.
# Exemplo: deck[1, c(1, 2, 3)] ou  deck[1, 1:3]

deck[1, c(1, 2, 3)] # retornará valores da primeira linha e primeira, 
                    # segunda e terceira colunas.

new <- deck[1, c(1, 2, 3)]
new


vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]

# drop = FALSE
# se selecionarmos 2 ou mais colunas, R retornará um novo data frame

deck[1:2, 1:2]

# se selecionarmos uma única coluna, R retornará um vetor

deck[1:2, 1]

# Se preferir um data frame, podemos adicionar o argumento drop=FALSE
deck[1:2, 1, drop = FALSE]

# 6.1.2 Inteiros negativos
# Fazem exatamente o oposto dos positivos durante a indexação.

# R retornará todos os elementos, exceto os elementos em um índice negativo.
# deck[-1,1:3] retornará tudo, exceto a primeira linha do deck

deck[-(2:52), 1:3]

# Inteiros negativos são uma maneira mais eficiente de criar um subconjunto
# do que os inteiros positivos se vc desejar incluir a maioria das linhas ou 
# colunas de um dataframe


# 6.1.3 Zero
# Criará um objeto vazio

deck[0, 0]
# indexar com zero não é muito útil

# 6.1.4 Espaços em branco
# Um espaço em branco extrai todos os valores em uma dimensão

deck[1, ]

# 6.1.5 Valores Lógicos
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































