# vetores - estrutura b�sica de dados
# uma sequ�ncia de dados do mesmo tipo

nomes = 'Renato Cruz'
horas = 10
l1 = TRUE

# Vetores de caracteres
is.vector(nomes)
mode(nomes)

# vetores num�ricos
is.vector(horas)
mode(horas)

# vetor l�gico
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
str(b)                      # fun��o str mostra um resumo da vari�vel

e <- list(c(10,6,51,5),'2',8)
str(e)
e[[1]][1]                   # posi��o 1 (10,6,51,5) indice 1 (10)
e[[2]]