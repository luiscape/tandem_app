## Tandem App
#
# Script em R que limpa a planilha de Excel criada pelo Tandem
# e salva o resultado em um banco de dados SQLite. 


# Carregando dependências
library(xlsx)

arquivos <- list.files('dados')
listaArquivos <- grep(".csv$", arquivos)

tandemGeral <- read.csv(paste0('dados/', arquivos[listaArquivos[1]]),
                        fileEncoding = "latin1")

tandemParcerias <- read.csv(paste0('dados/', arquivos[listaArquivos[2]]),
                                            fileEncoding = "latin1")


# Programa Haitianos. 
tandemParcerias <- read.csv(paste0('dados/', arquivos[listaArquivos[2]]),
                            fileEncoding = "latin1")

