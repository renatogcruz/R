#texto
x = read.csv(file.choose(), header = TRUE, sep = ";")
x

#odbc
install.packages("RODBC")
library(RODBC)
conexao <- obdcDriverConnect('driver={SQL Server};server=DESKETOPO-UD9RQJ9\\SQLEXPRESS;database=VENDAS;trusted_connection=true') # abre a conexão

resultado <- sqlQuery(conexao, "select * from dbo.vendas") #faz uma consulta

resultado #mostra a consulta

obdcClose(conexao) #fecha a conexão

#planilha
install.packages("xlsx")
library(xlsx)
dados = read.xlsx(file.choose(), sheetIndex = 1)
dados

