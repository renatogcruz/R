######################### Teste t para uma Amostra #########################


# Passo 1: Carregar os pacotes que ser�o usados

if(!require(dplyr)) install.packages("dplyr") # Instala��o do pacote caso n�o esteja instalado
library(dplyr)                                # Carregamento do pacote


# Passo 2: Carregar o banco de dados

# Importante: selecionar o diret�rio de trabalho (working directory)
# Isso pode ser feito manualmente: Session > Set Working Directory > Choose Directory
# Ou usando a linha de c�digo abaixo:

setwd("C:/Users/Renato/OneDrive/github/R/Curso_estatistica_aplicada_no_R")

dados <- read.csv('Dados_a4.csv', sep = ';', dec = ',')   # Carregamento do arquivo csv
View(dados)                                                       # Visualiza��o dos dados em janela separada
glimpse(dados)                                                    # Visualiza��o de um resumo dos dados


# Passo 3: Verifica��o da normalidade dos dados

shapiro.test(dados$Altura)

## H0: distruibui��o dos dados = normal -> p > 0.05
## H1: distruibui��o dos dados != normal -> p <= 0.05
## como p-value deste teste � maior que 0.05, vamos aceitar esses dados como normal
## ou seja, estes dados tem distrui��o normal (n�o rejeitar a hip�tese nula)

# Passo 4: Realiza��o do teste t para uma amostra

t.test(dados$Altura, mu = 167) # mu = valor -> valor de refer�ncia (1,67 altura m�dia)


# Observa��o:
# O teste bicaudal � o default; caso deseje unicaudal, necess�rio incluir:
# alternative = "greater" ou alternative = "less"
# Exemplo: t.test(dados$Altura, mu = 167, alternative = "greater")
# Nesse caso, o teste verificar� se � a m�dia amostral � maior que a m�dia testada

# O teste-t para uma amostra mostrou que a m�dia
# de altura da amostra (168.43 cm) n�o � diferente
# da m�dia de altura nacional (167 cm) (t(29) = 0.702; p = 0.488)


# Passo 5 (opcional): Visualiza��o da distribui��o dos dados

boxplot(dados$Altura, ylab = "Altura (cm)")