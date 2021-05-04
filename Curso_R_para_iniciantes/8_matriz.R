# matrizes - duas dimensões um tipo de dado

m <- matrix(1:9, nrow = 3) # 1:9 é a sequência de valores (do 1 ao 9)
m

mode(m)
class(m)

is.matrix(m)

# acessando dados da matriz - m[linha,coluna]
m[1,3]
m[1,3] <- "a"

m

mode(m)

class(m)