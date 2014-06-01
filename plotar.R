# Plotagem simples de dados do Tandem. 

library(ggplot2)

# Número de estudantes (incluindo a nacionalidade brasileira).

within()

ggplot(tandemGeral) + theme_bw() + 
    geom_bar(aes(Nacionalidade), 
             stat = 'bin') +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))


# Número de estudantes (excluindo a nacionalidade brasileira).
# use the factoring available here to order the bars and add 
# profession also. 
# http://docs.ggplot2.org/0.9.3.1/geom_bar.html

ggplot(plotProfissao[plotProfissao$variavel != 'brasileira', ]
    ) + theme_bw() + 
    geom_bar(aes(x = reorder(variavel, variavel,
                             function(x) -length(x)), y = quantidade), 
             stat = 'bin') +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))




# Linha de tendências.
ggplot(tandemGeral, aes(Inscri..o)) + theme_bw() + 
    
    # Adicionando linhas.
    geom_line(stat = 'bin', size = 1.3, color = "#0988bb") +
    geom_area(stat = 'bin', size = 1.3, fill = "#0988bb", alpha = 0.3) + 
    
    # Adicionando pontos.
    geom_point(size = 4, stat = 'bin', color = "#FFFFFF") + 
    geom_point(size = 3.5, stat = 'bin', color = "#0988bb")
    
    
# Linha de tendências.
ggplot(tandemGeral, aes(Inscri..o)) + theme_bw() + 
    
    # Addinb bars. 
    geom_bar(fill = "#CCCCCC", binwidth = 25) + 
    
    # Adicionando linhas.
    geom_smooth(stat = 'bin', size = 1.3, color = "#0988bb") 
#     geom_area(stat = 'bin', size = 1.3, fill = "#0988bb", alpha = 0.3) + 

# Adicionando pontos.
#     geom_point(size = 4, stat = 'bin', color = "#FFFFFF") + 
#     geom_point(size = 3.5, stat = 'bin', color = "#0988bb")


geom_smooth(method = "lm", se=FALSE, color="black")



