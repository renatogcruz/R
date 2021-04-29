# OBJETIVOS: entender como a linguagem R organiza os dados

# COMO?
# exemplos

# Armazenamento numérico

salario <- 3450.89
horas <- 220

sh <- salario/horas
shi <- as.integer(salario/horas) # converte para valor inteiro
shi = 5
shr = round(salario/horas)       # arredonda 

numeros1 <- salario + horas
numeros1

numeros2 <- c(salario, horas) # salvando os dois valores em uma só variável
numeros2
