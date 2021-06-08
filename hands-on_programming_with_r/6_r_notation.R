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
# se selecionarmos 2 ou mais colunas, R retornará um novo quadro

deck[1:2, 1:2]

# se selecionarmos uma única coluna, R retornará um vetor

deck[1:2, 1]

# Se preferir um quadro de dados, podemos adicionar o argumento drop=FALSE
deck[1:2, 1, drop = FALSE]

# 6.1.2 Inteiros negativos










































