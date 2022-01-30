# CAPÍTULO 11 - STRINGS COM STRINGR - página 195

# pacotes
library(tidyverse)
library(stringr)

# o básico de string
string1 <- "This is a string"
string2 <- 'To put a "quote" inside a string, use single quotes'

# escapes
double_quotes <- "\"" # or '"'
double_quotes <- '\'' # or '"'

# # writeLines()
# para ver conteudos brutos da string, use writeLines()

double_quotes
# output = [1] "'"

writeLines(double_quotes)
# output = '

# Mais caracteres especiais
x <- "\u00b5"
x
# output = "µ"

# Comprimento de uma string
str_length(c('a', 'R for data science', NA))
# output = 1 18 NA

# combinando string
str_c("x", "y")
# output = "xy"

# combinando string com argumento sep para separar
str_c("x", "y", sep = ", ")
# output = ""x, y"

# str_c é vetorizada e recicla automaticamente os vetores mais curtos
str_c("prefix-", c("a", "b", "c"), "-suffix")
# output = ""prefix-a-suffix" "prefix-b-suffix" "prefix-c-suffix"

name <- "Renato"
time_of_day <- "morning"
birthday <- FALSE

str_c(
  "Good", time_of_day, " ", name,
  if (birthday) "and HAPPY BIRTHDAY"
)
# output = "Goodmorning Renato"

# para colapsar um vetor de string em uma única string, use collapse
str_c(c("x","y","z"), collapse = ",")
# output = "x,y,z"

# # str_sub()
# podemos extrair parte de um string usando str_sub()

x <- c("Apple", "Banana", "Pear")
str_sub(x, 1, 3)
# output = "App" "Ban" "Pea"

# negative numbers count backwards from end
str_sub(x, -3, -1)
# output = "ple" "ana" "ear"

# não falhará se a string for curta demais. Ela só retornará o máximo possível
str_sub("a", 1, 5)
# output = "a"

# podemos usar o str_sub para modificar strings
str_sub(x, 1, 1) <- str_to_lower(str_sub(x, 1, 1))
x
# output = "apple"  "banana" "pear"

# localizações - página 199
# str_to_lower() - textos minúsculas
# str_to_upper() - textos maiúsculos
str_to_upper(c("i", "l"))
# output = "I" "L"

str_to_lower(c("TEXT", "L"))
# output = "text" "l"

# # order() e sort()
x <- c('apple', 'eggplant', 'banana')

str_sort(x, locale = "en") # English
# output = "apple"    "banana"   "eggplant"

str_sort(x, locale = "haw") # Hawaiian
# output = "apple"    "eggplant" "banana"

# # Expressões regulares - pág 200 - 222




