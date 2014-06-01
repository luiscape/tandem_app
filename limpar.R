## Script para verificar duplicatas na base de dados. 

### To-do ###
# 1. As datas importadas não vem como a classe Date. | DONE
# 2. Utilizar regex para limpar os campos de 'estudantes'. | 



tandemGeral <- tandemGeral[, 1:14]

tandemGeral[1] <- as.Date(tandemGeral$Inscri..o)

tandemGeralProf <- tandemGeral

estIndex1 <- grep("^Est", tandemGeralProf$Profiss.o)
estIndex2 <- grep("^Dout", tandemGeralProf$Profiss.o)
estIndex3 <- grep("^Mest", tandemGeralProf$Profiss.o)
estIndex <- c(estIndex1, estIndex2, estIndex3)

profIndex <- grep("^Prof", tandemGeralProf$Profiss.o)

tandemGeralProf$Profiss.o[estIndex] <- "Estudante"
tandemGeralProf$Profiss.o[profIndex] <- "Professor"
tandemGeralProf$Profiss.o <- as.character(tandemGeralProf$Profiss.o)

tandemGeralProf$est_estudante <- tandemGeralProf$Profiss.o == 'Estudante'
    
    