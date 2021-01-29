# vamos usar o exemplo de permutação

library(GA)

mapa = read.csv(file.choose(), header = F, sep = ";")

f <- function(z)
{
  dist = 0
  for (i in 1:4)
  {
    cidade1 = z[i]
    cidade2 = z[i + 1]
    dist = dist + mapa[cidade1, cidade2]
  }
  return(-dist)
}

resultado <- ga(type = "permutation", fitness = f, min = c(1, 1, 1, 1, 1), max = c(5, 5, 5, 5, 5), popSize = 10, maxiter = 5, names = c("Linden", "Parika", "Lethem", "Rosigno1", "New Amsterdam"))

summary(resultado)

summary(resultado)$solution

plot(resultado)