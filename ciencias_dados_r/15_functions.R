# FUNÇÕES - pá. 269

# * * * * * * *  DRY - NOT REPEAT YOURSELF * * * * * * * 

# Quando deveriamos usar funções?
# Considere escrever uma função sempre que copiar e colar um bloco
# de código mais de duas vezes.

df <- tibble::tibble(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10),
)

df$a <- (df$a - min(df$a, na.rm = TRUE)) / 
  (max(df$a, na.rm = TRUE) - min(df$a, na.rm = TRUE))

df$b <- (df$b - min(df$a, na.rm = TRUE)) / 
  (max(df$b, na.rm = TRUE) - min(df$b, na.rm = TRUE))

df$c <- (df$c - min(df$c, na.rm = TRUE)) / 
  (max(df$c, na.rm = TRUE) - min(df$c, na.rm = TRUE))

df$d <- (df$d - min(df$d, na.rm = TRUE)) / 
  (max(df$d, na.rm = TRUE) - min(df$d, na.rm = TRUE))

# Para escrever uma função, é preciso analisar o código. 
# Quantas entradas ele têm?
# Nesse caso, o código tem apenas 1 entrada -- df$n

x <- df$a
(x - min(x, na.rm = TRUE)) /
  (max(x, na.rm = TRUE) - min(x, na.rm = TRUE))

# Há certa duplicação neste código. Estamos calculando 3 vezes a variação
# dos dados, mas faz sentido fazer isso nesta etapa:

rng <- range(x, na.rm = TRUE)
(x - rng[1]) / (rng[2] - rng[1])

# Extrair cálculos intermediários de variáveis nomeadas é uma boa prática, pois 
# deixa mais claro o que o código está fazendo.

# Agora que simplificamos o código, podemos tranformá-lo em uma função:
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

rescale01(c(0,5,10))
# output = 0.0 0.5 1.0

rescale01(c(1111,5555,4646))
# output = 0.0000000 1.0000000 0.7954545

# Há três passos-chave para criar uma nova função:
# 1 - Escolher um nome para a função. Seja explicito
# 2 - Listar as entradas, ou argumentos.
# 3 - Colcoar o código que desenvolveu no corpo da função.

# Veja sobre TESTES FORMAIS AUTOMATIZADOS
# http://r-pkgs.had.co.nz/tests.html

# http://nicercode.github.io/intro/writing-functions.html

# # Função são para humanos e computadores - pág. 273


# Geralmente, nomes de funções devem ser verbos e argumentos, substantivos.






