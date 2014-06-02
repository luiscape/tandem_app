### Exporting for C3.js work. ### 

library(rjson)

InscritosDia <- data.frame(table(tandemGeral$Inscri..o))
names(InscritosDia) <- c('Dia', 'Quantidade')
dir.create('d3_data')
write.csv(InscritosDia, 'd3_data/inscritos_dia.csv', row.names = FALSE)
toJSON(InscritosDia, method = 'C')
