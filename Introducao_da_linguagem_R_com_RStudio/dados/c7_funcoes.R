# Chamando a função utilizando 2 argumentos e dando nomes a eles
head(x=iris, n=2)
# Chamando a função com apenas um argumento
head(iris)
# Passando os dois argumentos sem nomes
head(iris, 2)
# Passando argumento sem o primeiro obrigatório (erro!)
head(n=22)
#Error in checkHT(n, dx <- dim(x)) : 
#  argument "x" is missing, with no default



