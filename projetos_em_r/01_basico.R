# um conjunto de números é um vetor

x <- c(5, 10, 15, 20, 25, 30, 35, 40)
x

# vendo objetos no r
ls()

# somando núermos
sum(x)

# média de números
mean(x)

# variância
var(x)

# FUNÇÕES EM R

# função seq()
y <- seq(5, 40, 5)

# FUNÇÕES DEFINIDAS PELO USUÁRIO

# estrutura

# myfunction <- function(arfument1, argument2, ...){
# statements
# return(objetct)
#}

# função hypotenuse()

hypotenuse <- function(a, b){
  hyp <- sqrt(a^2+b^2)
  return(hyp)
}

hypotenuse(3, 4)

# VETORES

beatles <- c('John', 'Paul', 'George','Ringo')
w <- c(T, F, F, T, T, F)

# chamando componente específico
beatles[2]

# chamando dois componentes consecutivos
beatles[2:3]

# chamando dois componentes não consecutivos
beatles[c(2, 4)]

# VETORES NUMÉRICOS
y <- seq(5, 40, 5)
y

# sem o terceiro argumento, a sequência aumenta em 1
y <- seq(5, 40)
y

# sintaxe especial para criar um vetor numérico cujos elementos aumetam em 1
y <- 5:40
y

# função rep() cria um vetor de valores repetidos
quadrifecta <- c(7,8,4,3)
repeatd_quadrifecta <- rep(quadrifecta, 3)
repeatd_quadrifecta

# usando append() para adicionar um item no final de um vetor
xx <- c(3, 4, 5)
xx <- append(xx, 6)
xx

# usando prepend() para adicionar um item no começo de um vetor
xx <- prepend(xx, 2) # função disponível apenas com o pacote 
                     # https://www.rdocumentation.org/packages/rlang/versions/0.2.2

# quantos itens existem em um vetor?
length(xx)

# MATRIZES

num_matrix <- seq(5,100,5)
num_matrix

# use dim() para transformar o vetor em uma matriz bidimensional
dim(num_matrix) <- c(5,4)
num_matrix

# transposição de matriz
t(num_matrix)

# função matrix() fornece outra maneira de criar matrizes
num_matrix <- matrix(seq(5, 100, 5), nrow = 5)
num_matrix

# se adicionar byrow=T R preencherá a matriz por linhas
num_matrix <- matrix(seq(5, 100, 5), nrow = 5, byrow = T)
num_matrix

# componente específico de matriz
num_matrix[5, 4]

# referir a uma linha inteira
num_matrix[3,]

# coluna inteira
num_matrix[, 2]

# LISTAS
beatles <- c('john', 'paul', 'george', 'ringo')
beatles

ages <- c(17, 15, 14, 22)

# para combinar as informações em uma lista, use a função list()
beatles_info <- list(names=beatles, age_joined=ages)
beatles_info

# use cifrão para indicar cada componente de lista
beatles_info$names
beatles_info$age_joined

beatles_info$names[beatles_info$age_joined > 16]

#DATAFRAME
name <- c('al', 'barbara', 'charles', 'donna', 'ellen', 'fred')
height <- c(72,64,73,65,66,71)
weight <- c(195,117,205,122,125,199)
gender <- c('M', 'F', "M", 'F', 'F', 'M')

# transformando em categorias masc e femin usando função factor()
factor_gender <- factor(gender)
factor_gender

# a saída 'levels' é o termo que R usa para categorias

# A função data.frame() trabalha com vetorespara criar um quadro de dados:
d <- data.frame(name, factor_gender, height, weight)
d

# quer saber a altura da terceira pessoa?
d[3, 3]

# e que tal todas as informações da quinta pessoa?
d[5,]

# com cifrão identifica uma coluna
d$height

# podemos calcular estatísticas, como a média
mean(d$height)

# encontrando a algura média das mulheres
mean(d$height[d$factor_gender == 'F'])

# se vc quiser eliminar o uso do cifrão, basta usar with()
with(d, mean(height[factor_gender == "F"]))

# quantas linhas existemem um dataframe?
nrow(d)

# quantas colunas existem em um dataframe?
ncol(d)

# para adicionar uma coluna a um dataframe usamos cbind()
aptitude <- c(35,20,32,22,18,15)


d.apt <- cbind(d, aptitude)
d.apt

# LOOPS FOR E INSTRUÇÕES IF

# sintaxe padrão
#for counter in start:end{
#               statement 1
#statemente n
#}

# formato geral

xx
yy <- NULL
10 %% 3
5 %% 2
4 %% 2

for(i in 1:length(xx)){
  if(xx[i] %% 2 == 0){yy[i] <- 'EVEN'}
  else{yy[i] <- "ODD"}
}


