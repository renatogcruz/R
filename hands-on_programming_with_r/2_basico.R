1:2
1:4

die <- 1:6
die

die + 1:2
die + 1:4

die %*% die #multiplicação interna com %*%

die %o% die


# FUNÇÕES

round(3.141516)

factorial(3)

mean(1:6)

mean(die)

round(mean(die))

# FUNÇÃO sample (Random Samples and Permutations)

?sample      #ajuda (retorna descrição e ajuda da função)
args(sample) #ajuda rápida (retorna a estrutura da função)

# sample é uma boa função para rolarmos o dado

sample(x = 1:4, size = 2)

# para rolar o dado e obter um número de volta
sample(x = die, size = 1)

sample(x = die, size = 1)

sample(die, 1) #maneira economica de se escrever


# 2.3.1 Amostra com Substituição

sample(die, size = 2) #pode parecer que simula 2 dados, mas o primeiro valor
                      #nuca será igual ao primeiro. Cuidado
sample(die, size = 2, replace = TRUE) #replace TRUE corrige este erro

args(sample) #revendo os inputs da função sample

dados <- sample(die, size = 2, replace = TRUE)
dados

sum(dados)

# 2.4 Escrevendo suas próprias funções

die <- 1:6
die

dado <- sample(die, size = 2, replace = TRUE)
dado
sum(dado)

# fazendo nossa função

roll <- my_function <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll()
roll()

dado
1 + 1
sqrt(2)

dado <- sample(die, size = 2, replace = TRUE)
two <- 1 + 1
a <- sqrt(2)

# 2.5 Argumentos

roll2 <- function(bones){
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

args(roll2)
roll2(bones = 1:4)
roll2(bones = 1:6)
roll2(bones = 1:20)

roll2 <- function(bones = 1:6){
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll2()

# 2.6 Scripts







