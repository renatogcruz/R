# Saber o diretório padrão
getwd()

# mudar o diretório padrão
setwd("C:\\Users\\Renato\\OneDrive\\github\\R\\Introducao_da_linguagem_R_com_RStudio\\dados")

# Informa o tipo do objeto
class(iris)

# Copiando iris
iristeste = iris
# salvando iristeste, cópia do iris
save(iristeste, file="iristeste.RData")
# remover o iristeste para testar o carregamento
rm(iristeste)
# testando a recupareção
iristeste
# carregando arquivo
load(file="iristeste.Rdata")
# testando novamente
iristeste

# função genérica de impressão
x = c(12, 34, 56, 79)
y = c(1, 6, 9, 14)
plot(x,y)

# quick encerra a sessão
quit()


