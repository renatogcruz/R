# Objetivo: primeiro contato com a linguagem R (segunda, terceira, quarta...)

# craindo variaveis
# para executar clique sobre a linha ou selecione o conjunto de linhas
# e precione ctrl + enter

a <- 10 # em R, atribui-se variável com '<-' (melhor forma de atribuir) ou '='
a

b
b = 10
b
B

# utilizaremos <- na criacao de variaveis e = nas atribuições de funcoes
c -> 10
10 -> c
c -> d

# para padrozinar sempre utilizaremos 'varaiveis' <- 'valor'
a <- 10
b <- 5

a
b

c <- a + b
c

a <- 'Heitor'
b <- 'Joao'

a
b

c <- a + b
c

# Funções
# fazem parte de um pacote
# pacotes contem muitas funcoes e precisam estar instalados
# não sendo um pacote padrao ele precisa ser chamado

c <- c(a, b) # função (abre e fecha parenteses) para concatenar strings
c

# Help - chamar o help
?c # chamando o help da função c

c <- c('Renato', 'Cruz')

a <- c(10,5,15,20)
a

?summary
summary(a) # summary tem a mesma função que o .describe() tem em pandas (python)
summary(b)

# função de um pacote não padrão
?str_c

if(!require(stringr)) install.packages("stringr")
library(stringr)

?str_c

Nome <- 'João'
Sobrenome <- 'Silva'

NomeCompleto <- str_c(Nome, Sobrenome)
NomeCompleto

NomeCompleto <- str_c(Nome, " ", Sobrenome)
NomeCompleto









