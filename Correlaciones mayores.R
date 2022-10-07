correl <- df %>% correlate()
correl[abs(correl$coef_corr) >= 0.6,] %>% print(n = Inf)
# te saca todas y replicadas, habría que meter un filtro 
