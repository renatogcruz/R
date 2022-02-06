# DATAS E HORAS COM LUBRIDATE pág. 237

# libraries
library(tidyverse)

library(lubridate)      # datetime in Python
library(nycflights13)


# Criando data/hora
today()
# output: "2022-02-05"

now()
# output: "2022-02-05 15:54:51 -03"

# há mais 3 maneiras de criar uma data/hora
# 1 - a partir de uma string
ymd("2017-01-31")
mdy("January 31st, 2017")
dmy("31-Jan-2017")
# output: "2017-01-31"

ymd(20170131)
# output: "2017-01-31"

ymd_hms("2017-01-31 20:11:59")
# output: "2017-01-31 20:11:59 UTC"

ymd(20170131, tz = "UTC") # forçando um fuso-horário - tz == timezone
# output: "2017-01-31 UTC"

# 2 - a partir de componentes individuais de data-hora
flights %>% 
  select(year, month, day, hour, minute)
# output
#year month   day  hour minute
#<int> <int> <int> <dbl>  <dbl>
#  1  2013     1     1     5     15
#2  2013     1     1     5     29
#3  2013     1     1     5     40
#4  2013     1     1     5     45
#5  2013     1     1     6      0
#6  2013     1     1     5     58
#7  2013     1     1     6      0
#8  2013     1     1     6      0
#9  2013     1     1     6      0
#10  2013     1     1     6      0

# para criar uma data/hora a partir desse tipo de entrada, use
# make_date() para datas ou make_datetime() para datas-horas
flights %>% 
  select(year, month, day, hour, minute) %>% 
  mutate(
    departure = make_datetime(year, month, day, hour, minute)
  )
# output
# A tibble: 336,776 x 6
#year month   day  hour minute departure          
#<int> <int> <int> <dbl>  <dbl> <dttm>             
#  1  2013     1     1     5     15 2013-01-01 05:15:00
#2  2013     1     1     5     29 2013-01-01 05:29:00
#3  2013     1     1     5     40 2013-01-01 05:40:00
#4  2013     1     1     5     45 2013-01-01 05:45:00
#5  2013     1     1     6      0 2013-01-01 06:00:00
#6  2013     1     1     5     58 2013-01-01 05:58:00
#7  2013     1     1     6      0 2013-01-01 06:00:00
#8  2013     1     1     6      0 2013-01-01 06:00:00
#9  2013     1     1     6      0 2013-01-01 06:00:00
#10  2013     1     1     6      0 2013-01-01 06:00:00
# ... with 336,766 more rows


# 3 - a partir de um objetivo data/hora existe
as_datetime(today())
# output: "2022-02-05 UTC"

# as vezes obtemos datas/horas como offsets numéricos de "Unix Epoch"
as_datetime(60 * 60 * 10)
# output: "1970-01-01 10:00:00 UTC"

as_date(365 * 10 + 2)
# output: "1980-01-01"

# # componentes de Data-Hora - pág. 243

# [...]

# # Intervalos de Tempo
# How old is Hadley?
h_age <- today() - ymd(19791014)
h_age
# output: Time difference of 15455 days

as.duration(h_age)
# output: "1335312000s (~42.31 years)"

# outros construtores
dseconds(15)
# output: "15s"
dminutes(10)
# output: "600s (~10 minutes)"
dhours(c(12, 24))
# output: "43200s (~12 hours)" "86400s (~1 days)" 
ddays(0:5)
# output: "0s"                "86400s (~1 days)"  "172800s (~2 days)"
#         "259200s (~3 days)" "345600s (~4 days)" "432000s (~5 days)"

# Perídos - página 250

# Intervalos - página 252

# # QUADRO RESUMO PARA ESCOLHER ENTRE DURAÇÃO, PERÍDOS E INTERVALOS
# # Pág. 253

# Fusos horários
Sys.timezone()
# output: "America/Sao_Paulo"

# tamanho da lista de todos os nomes de fusos horários
length(OlsonNames())
# output: 593

