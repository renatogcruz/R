# CAPÍTULO 12 - página 223

# # Fatores com forcats
# Introdução
# Em R, fatores são usados para trabalhar com variáveis categóricas, que têm
# um conjunto fixo e conhecido de valores possíveis. Eles também são úteis
# quando precisamos exibir vetores de caracteres em ordem alfabética.

# Pré-requisitos
library(tidyverse)
library(forcats)

x1 <- c("Dec", "Apr", "Jan", "Mar")

# 2 problemas
# Há 12 meses possíveis, e não há nada que lhe salve de erros de digitação
# Não dá para ordenar de maneira útil:
sort(x1)
# output = "Apr" "Dec" "Jan" "Mar"

# podemos corrigir os dois problemas com um fator
month_levels <- c(
  "Jan", "Feb", "Mar", "Apr", "May", "jun", 
  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
)

# agora podemos criar um fator
y1 <- factor(x1, levels = month_levels)
y1
sort(y1)
# output = Jan Mar Apr Dec
# valores que não estiverem no conjunto serão convertidos a NA

# pág. 225 - general social survey
# https://gss.norc.org
forcats::gss_cat

# para mais informações: ?gss_cat

# quando os fatores são armazenados em um tibble, não é 
# possível ver facilmente seus níveis. Uma maneira 
# de vê-los é com count()
gss_cat %>%                     # atalho pipeline ctrl + shift + M
  count(race)

# ou com gráfico de barras
ggplot(gss_cat, aes(race)) + 
  geom_bar()

# por padrão, ggplot2 deixará de lado os níveis que não têm valor. Podemos
# forçar sua exibição
ggplot(gss_cat, aes(race)) + 
  geom_bar() +
  scale_x_discrete(drop = FALSE)

# Modificando a ordem dos fatores
relig <- gss_cat %>% 
  group_by(relig) %>% 
  summarize(
    age = mean(age, na.rm = TRUE),
    tvhours = mean(tvhours, na.rm = TRUE)
  )

ggplot(relig, aes(tvhours, relig)) +
  geom_point()

# cont pág. 228




