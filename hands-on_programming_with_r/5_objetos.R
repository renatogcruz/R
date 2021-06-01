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



