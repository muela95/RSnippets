lista4 <- c()
for(i in 29:ncol(nvl4))
{
    
    column <- names(nvl4[i])
    avz <- aov(get(column) ~ Grupo, data = nvl4)
    if(summary(avz)[[1]][["Pr(>F)"]][1] < 0.05) {
        print(column)
        print(summary(avz))
        print(TukeyHSD(avz))
        lista4 <- append(lista4, column)
        print(lista4)
        
    }
}
