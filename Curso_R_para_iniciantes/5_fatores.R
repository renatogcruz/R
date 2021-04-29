# armazenamento de fatores

cargahoraria <- c(220,220,150,100,100)
summary(cargahoraria) #equivalente ao .describe() do pandas

cargahoraria <- as.factor(cargahoraria)
summary(cargahoraria)

cargahoraria <- as.factor(c(220,220,150,100,100))
summary(cargahoraria)
mode(cargahoraria)
class(cargahoraria)
