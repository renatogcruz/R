# Saber o diret�rio padr�o
getwd()

# mudar o diret�rio padr�o
setwd("C:\\Users\\Renato\\OneDrive\\github\\R\\Introducao_da_linguagem_R_com_RStudio\\dados")

# Informa o tipo do objeto
class(iris)

# Copiando iris
iristeste = iris
# salvando iristeste, c�pia do iris
save(iristeste, file="iristeste.RData")
# remover o iristeste para testar o carregamento
rm(iristeste)
# testando a recupare��o
iristeste
# carregando arquivo
load(file="iristeste.Rdata")
# testando novamente
iristeste

# fun��o gen�rica de impress�o
x = c(12, 34, 56, 79)
y = c(1, 6, 9, 14)
plot(x,y)

# quick encerra a sess�o
quit()


