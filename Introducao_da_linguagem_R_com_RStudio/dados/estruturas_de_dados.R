#vetores
x <- c(1, 2, 3, 4, 5, 6)
x
x[1]
x[1] <- 10
x[1]
x


#outros tipos de vetores
y = c("a", "b", "c", "d")
y
z = c(1L, 2L, 3L)
z

#matrizes
VADeaths
colnames(VADeaths)
rownames(VADeaths)

#só coluna 1
VADeaths[,1]

#só linhas
VADeaths[1,]

#linas 1 até 3
VADeaths[1:3,]

#data frame
longley
#funciona como matrizes
longley[,1:3]
#acessar coluna com $
longley$Unemployed
#ou nome
longley['Unemployed']

#listas
ability.cov
#acessando elementos
ability.cov$cov
ability.cov[1]
#verificando que são objetos diferentes
class(ability.cov$cov)
class(ability.cov$center)
#acessando elemento dentro da lista
ability.cov$cov[,1:3]

#fatores, variaveis categoricas com um numero limitado de valores diferentes
#são armazenados como inteiros
state.region




