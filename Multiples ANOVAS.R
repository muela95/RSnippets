for(i in 29:ncol(df))
{
    
    column <- names(nvl3[i])
    avz <- aov(get(column) ~ Grupo, data = df)
    if(summary(avz)[[1]][["Pr(>F)"]][1] < 0.05) {
        
        print(column)
        print(summary(avz))
        print(TukeyHSD(avz))
    }
}
