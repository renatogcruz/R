# TRANSFORMAÇÃO DE DADOS COM DPLYR

library(nycflights13)
library(tidyverse)

# O BÁSICO DO DPLYR
# filter() - selecione observações por seus valores
# arrange() - reordene as linhas
# select() - selecione variáveis por seus nomes
# mutate() - crie novas variáveis com funções de variáveis existentes
# summarize() - reúna muitos valores em um único resumo

## FILTER()
filter(flights, month == 1, day == 1) # selecionando todos os voos de 1º de janeiro

jan1 <- filter(flights, month == 1, day == 1) # salvando filter
jan1

# computadores usam aritmética de precisão finita
# então lembre-se de que todo número que usamos é uma aproximação

sqrt(2)^2 == 2
1/49 * 49 == 1

# então, em vez de depender de ==, use near()
near(sqrt(2)^2, 2)
near(1/49 * 49, 1)


# OPERADORES LÓGICOS
# argumentos múltiplos para filter() são combinados com and, or e not

filter(flights, month == 11 | month == 12) 

nov_dec <- filter(flights, month %in% c(11,12)) 
nov_dec

# VALORES FALTANTES - pag. 48
NA > 5
10 == NA
NA + 10
NA / 2

NA == NA

# entendendo os resultados
# x é a idade de Maria (não sabemos sua idade)
x <- NA
# y é a idade de João (não sabemos sua idade)
y <- NA
# João e Maria têm a mesma idade?
x == y
# resposta NA, pois não sabemos suas idades

is.na(x) # determinar se há um valor faltando, use is.na()

# filter() só inclui linhas onde a condição é TRUE
df <- tibble(x = c(1, NA, 3))
filter(df, x>1)

filter(df, is.na(x) | x > 1)

# aARRANGE() - pág. 50
# ORDENAR LINHAS COM ARRANGE()

arrange(flights, year, month, day)

# use desc() para reordenar por uma coluna na ordem descendente
arrange(flights, desc(arr_delay))

# valores faltantes são sempre colacadas no final
df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))

# SELECT() - pág 51
# SELECIONAR COLUNAS COM SELECT()

# selecione colunas por nome
select(flights, year, month, day)

# selecione todas as colunas entre ano e dia (com eles inclusos)
select(flights, year:day)

# selecione todas as colunas, exceto aquelas de ano para dia (com eles inclusos)
select(flights, -(year:day))

# veja ?select para mais detalhes dessa função
# select() + everything() mover variáveis para o começo do dataframe
select(flights, time_hour, air_time, everything())

# MUTATE() - pág. 54
# ADICIONAR NOVAS VARIÁVEIS COM MUTATE()

# mutate() sempre adiciona novas colunas ao final do dataframe
flights_sml <- select(flights, 
                      year:day, 
                      ends_with('delay'), 
                      distance, 
                      air_time)

mutate(flights_sml, 
       gain = arr_delay - dep_delay, 
       speed = distance / air_time * 60)

# se quiser manter apenas as novas variáveis, use transmute()
transmute(flights, 
          gain= arr_delay - dep_delay, 
          hours = air_time / 60, 
          gain_per_hour = gain / hours)

# FUNÇÕES DE CRIAÇÃO ÚTEIS - página 56

