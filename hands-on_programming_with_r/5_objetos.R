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

# 5.1.1 double
die <- c(1, 2, 3, 4, 5, 6)
die
typeof(die) # que tipo de objeto é die??

# 5.1.2 Inteiros
int <- c(1L, 2L, 4L) # observe que o R não salvará um número inteiro, 
                     # ao menos que você inclua o L
int
typeof(int)

# por que vc salvaria seus dados como um ineiro em vez de um double?
# às vezes, uma diferença na precisão pode ter efeitos surpreendentes.

# Ex.: as vezes vc espera que o resultado abaixo seja zero, mas não é:
sqrt(2)^2 - 2

# esses erros são conhecidos como erros de PONTOS FLUTUANTES

# 5.1.3 Characters
text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")

# 5.1.4 - lógica

3 > 4
logic <- c(TRUE, FALSE, TRUE)
logic
typeof(logic)

# 5.1.5 Complexo e Bruto

# vetores complexos armazenam números complexos. Para criar um vetor
# complexo, adicione um termo imaginário a um número com "i"

comp <- c(1 + 1i + 1 + 2i + 1 + 3i)
comp
typeof(comp)

# vetores brutos armazenam bytes de dados brutos. Tornar vetores brutos fica
# complicado, mas você pode fazer um vetor bruto vazio de comprimento n com
# raw(n)
?raw


raw(3)
typeof(raw(3))

# Exercício 5.2 (vetor de cartas)

hand <- c("ace", "king", "queen", "jack", "ten")
hand

typeof(hand)

# 5.2 Atributos

attributes(die)

# 5.2.1 Nomes
# os atributos mais comuns para fornecer um vetor atômico são nomes, 
# dimensões (dim) e classes.

names(die)
# out é NULL - significa que die não tem um atributo de nomes.

names(die) <- c("one", "two", "three", "four", "five", "six")
# agora die tem atributos nomes

names(die)
attributes(die)
die
die + 1

names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis")
die
names(die) <- NULL
die

# 5.2.2 Dim
# pode-se transformar um vetor atômico em uma matriz n-dimensional
# atribuindo a ele um atributo de dimensões com dim

dim(die) <- c(2, 3) # duas linhas, 3 colunas
die

dim(die) <- c(3, 2) # três linhas, duas colunas
die

dim(die) <- c(1, 2, 3) #hipercubo - 1 linha, 2 colunas e 3 fatias
die

# em geral, as linhas sempre vêm primeiro lugar nas operações R que lidam
# com linhas e colunas

# 5.3 Matrizes
# armazenam valores em uma matriz bidimensional.

m <- matrix(die, nrow = 2)
m

# matrix irá preencher a matriz coluna por coluna por padrão
# para preenhcer linha por linha devemos declarar byrow = TRUE

m <- matrix(die, nrow = 2, byrow = TRUE)
m

?matrix

# 5.4 Matrizes (array)
# Cria função matriz n-dimensional

ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar

# Exercício 5.3 (faça uma matriz)
hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", 
           "spades", "spades", "spades")

matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)

# 5.5 Classe

# note que mudar as dimensões do seu objeto não irá alterar o tipo do objeto, 
# mas irá alterar o objeto do atributo 'class':


dim(die) <- c(2, 3)
typeof(die)

class(die)


attributes(die)

# podemos aplicar 'class' a objetos que não têm um atributo 'class'
class("Hello")

class(5)

# também podemos usar 'class' para definir um atributo 'class' de um objeto

# 5.5.1 datas e horários
now <- Sys.time()
now

typeof(now)
##  "double"

class(now)
## "POSIXct" "POSIXt"
# POSIX é uma estrutura amplamente usada para representar datas e horas.

now
unclass(now)

mil <- 1000000
mil

class(mil) <- c("POSIXct", "POSIXt")
mil


# 5.5.2 Factor
# Factor é a maneira de R armazenar informações categóricas, como etnia ou cor 
# dos olhos.

# para fazer um factor, passe um vetor atômico para factor. R irá recodificar
# os dados no vetor como inteiros e armazenar os resultados em um vetor de
# inteiros. R adicionará um atributo levels ao inteiro

gender <- factor(c("male", "female", "female", "male"))

typeof(gender)
attributes(gender)

unclass(gender)

gender
typeof(gender)


# converntendo um factor em string de caracteres
as.character(gender)

typeof(gender)

# Exercício 5.4 (Escreva uma carta) 
# Faça uma carta de jogo virtual combinando “ás”, “coração” e 1 em um vetor. 
# Que tipo de vetor atômico resultará? Verifique se você está certo.

card <- c("ace", "hearts", 1)
card

# isso causará problemas se vc quiser fazer matemática com esse valor em pontos, 
# por exemplo, para ver quem ganhou seu jogo de blacljack

# 5.6 Coerção












