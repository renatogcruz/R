# OBJETIVO: entender como a linguagm R organiza os dados

# COMO?
# Exemplos

# Armazenamento carateres
nome_1 <- 'Renato Cruz'
nome_2 <- 'Maria Antonia'
idade <- '36'

idade + 5

nomes <- nome_1 + nome_2
nomes <- c(nome_1, nome_2)

nomes
nomes[1] # não começa indexando em ZERO :O
nomes[2]
# Note que os índices no R começam em 1, e não em 0, como algumas 
# outras linguagens (quibesurdo)

