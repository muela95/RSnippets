correl <- df %>% correlate()
signif <- correl[abs(correl$coef_corr) >= 0.6,] %>% print(n = Inf)
# te saca todas y replicadas, habría que meter un filtro 
# como chapuza puedes hacer:
# signifFiltrada <- signif[!duplicated(signif$coef_corr),]
# Que quita los valores de correlaciones que sean iguales
