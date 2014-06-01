## Salvando dados em um banco de dados SQLite. 

# Criando banco de dados.
db <- dbConnect(SQLite(), dbname="tandem.sqlite")

dbWriteTable(db, "cadastro_geral", tandemCadastroGeral, 
             row.names = FALSE, overwrite = TRUE)

dbWriteTable(db, "tandem_parcerias", tandemParcerias, 
             row.names = FALSE, overwrite = TRUE)

# for testing purposes
test <- dbReadTable(db, "cadastro_geral")

dbDisconnect(db)
cat('done')
