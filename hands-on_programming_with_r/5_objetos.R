# 5.1 vetores atômicos
# Um vetor atômico é apenas um vetor simples de dados.
# o die era um vetor atômico

die <- c(1, 2, 3, 4, 5, 6)
die

is.vector(die) # is.vector testa se um objeto é um vetor atômico
               # retorna TRUE se for verdadeiro e FALSE, caso não seja.

five <- 5
five
is.vector(five)

length(five)  #length retorna o comprimento de um vetor atômico
length(die)

# R reconhece 6 tipos básicos de vetores atômicos: duplos, inteiros, caracteres
# lógicos, complexos e brutos.

# Para criar o baralho, precisaremos usar diferentes tipos de vetores atômicos
# (texto e números)

int <- 1L
text <- "ace"

int <- c(1L, 5L)
text <- c("ace", "hearts")

sum(int)
sum(text) # contém um erro

# 5.1.1 Duplas








