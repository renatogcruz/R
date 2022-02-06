# PIPES COM MAGRITTR - pág. 261

# pipes são uma ferramenta poderosa para expressar claramente
# uma sequência de múltiplas operações

# O pipe vem do pacote magrittr de Stefan Milton Bache (tidyverse carrega
# automaticamente)

library(magrittr)

# Vamos usar o código paa contar a história de um coelhinho chamado
# Foo Foo

# Little bunny Foo Foo
# Went hopping through the forest
# Scooping up the field mice
# And bopping them on the head

# Começamos definindo um objeto para representar o coelhinho Foo Foo]

foo_foo <- litle_bunny()

# Utilizaremos uma função para cada verbo: hop(), scoop(), bop()

# PASSOS INTERMEDIÁRIOS
# a abordagem mais simples é salvar cada passo como um novo objeto

foo_foo1 <- hop(foo_foo, through = forest)
foo_foo2 <- scoop(foo_foo1, up = field_mice)
foo_foo3 <- bop(foo_foo2, on = head)

# Analisando memoria dos objetos
#diamonds <- ggplot2::diamonds
#diamonds2 <- diamonds %>% 
#  dplyr::mutate(price_per_carat = price / carat)

#pryr::object_size(diamonds)
#pryr::object_size(diamonds2)
#pryr::object_size(diamonds, diamonds2)

# Subescrever o Origal
# EM vez de criar objetos intermediários em cada passo, poderíamos 
# sobescrever o objeto original
foo_foo <- hop(foo_foo, through = forest)
foo_foo <- scoop(foo_foo1, up = field_mice)
foo_foo <- bop(foo_foo2, on = head)

# Composição de Função
# Outra abordagem é utilizar funções
bop(
  scoop(
    hop(foo_foo, through = forest),
    up = field_mice
  ),
  on = head
)

# problema do sanduiche
# https://en.wikipedia.org/wiki/Dagwood_sandwich

# Usar Pipe
foo_foo %>% 
  hop(through = forest) %>% 
  scoop(up = field_mouse) %>% 
  bop(on = head)

# essa forma é boa porque foca nos verbos, não nos substativos
# podemos ler essa série de composições de funções como se fosse
# um conjunto de ações imperativas. Foo Foo pula, depois pega, depois bate

# O Pipe funciona realizando uma transformação lexical

# Veja quando não usar pipe - pág. 265 e 266

# veja outras ferramentas do magrittr - pág. 266








