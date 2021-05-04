# vetores - estrutura básica de dados
# uma sequência de dados do mesmo tipo

nomes = 'Renato Cruz'
horas = 10
l1 = TRUE

# Vetores de caracteres
is.vector(nomes)
mode(nomes)

# vetores numéricos
is.vector(horas)
mode(horas)

# vetor lógico
is.vector(l1)
mode(l1)

# lista - vetor com tipos de dados diferentes
a <- c(1, 2, 3, 4, 5)
b <- c(1, "2", 3, 4, 5)
a
b

is.list(a)
is.list(b)

is.vector(a)
is.vector(b)

b <- list(10, '2', 8)
is.list(b)
mode(b)
str(b)                      # função str mostra um resumo da variável

e <- list(c(10,6,51,5),'2',8)
str(e)
e[[1]][1]                   # posição 1 (10,6,51,5) indice 1 (10)
e[[2]]