a = 10
b = 20

if (a > 10)
{
  print("A � maior")
}else
{
  print("A n�o � maior")
}

x = ifelse(a > 10, "A � maior", "A n�o � maior")
x

for (i in 1:10){
  print(i)
}

a = 1
while(a <= 10)
{
  print(i)
  a = a + 1
}

parouimpar <- function(x) {
  
  return (ifelse(x%%2=0, "Par", "�mpar"))
  
}


parouimpar(5)
parouimpar(12)
