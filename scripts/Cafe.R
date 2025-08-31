### Point 1 of TEM's Group Work (G7)

# Limpar ambiente
rm(list = ls())

# Carregar dados
cafe <- read.table(file.choose(), header = TRUE)
dados <- subset(cafe, select = c(X1, X2, X3, X4, X5, X6))

# Atribuição de variáveis
aroma <- cafe$X1
sabor <- cafe$X2
sabor_res <- cafe$X3
acidez <- cafe$X4
corpo <- cafe$X5
equilibrio <- cafe$X6
var_grao <- cafe$X7

# Estatísticas descritivas
library(fBasics)
round(data.frame(
  basicStats(aroma),
  basicStats(sabor),
  basicStats(sabor_res),
  basicStats(acidez),
  basicStats(corpo),
  basicStats(equilibrio)
), 3)

# Boxplots
par(mfrow = c(2, 3))
boxplot(aroma, ylab = "Aroma do café")
boxplot(sabor, ylab = "Sabor do café")
boxplot(sabor_res, ylab = "Sabor após ingestão do café")
boxplot(acidez, ylab = "Vivacidade do sabor")
boxplot(corpo, ylab = "Espessura/Viscosidade do café na boca")
boxplot(equilibrio, ylab = "Diferentes componentes do sabor do café")


# Matriz de pares
pairs(dados)

# Correlação
library(ggplot2)
library(ggcorrplot)
ggcorrplot(cor(dados), hc.order = TRUE, lab = TRUE, lab_size = 3, method = "circle", title = "Correlograma", ggtheme = theme_gray())

# Correlograma alternativo
library(corrplot)
corrplot(cor(dados), title = "Correlograma", method = "circle")

# Coeficiente de variação
calcular_cv <- function(x) {
	((sqrt(sd(x)))/mean(x)) * 100
  	#(sd(x) / mean(x)) * 100
}

cv_aroma <- calcular_cv(aroma)
cv_sabor <- calcular_cv(sabor)
cv_sabor_res <- calcular_cv(sabor_res)
cv_acidez <- calcular_cv(acidez)
cv_corpo <- calcular_cv(corpo)
cv_equilibrio <- calcular_cv(equilibrio)

cv_results <- data.frame(
  Variavel = c("Aroma", "Sabor", "Sabor_Residual", "Acidez", "Corpo", "Equilibrio"),
  CV_Percentagem = round(c(cv_aroma, cv_sabor, cv_sabor_res, cv_acidez, cv_corpo, cv_equilibrio), 2)
)

print(cv_results)


# Função para análise e visualização dos outliers
analise_outliers <- function(vetor, nome_var) {
  Q1 <- quantile(vetor, 0.25, na.rm = TRUE)
  Q3 <- quantile(vetor, 0.75, na.rm = TRUE)
  IQ <- IQR(vetor, na.rm = TRUE)
  
  lim_inf <- Q1 - 1.5 * IQ
  lim_sup <- Q3 + 1.5 * IQ
  
  outliers <- vetor[vetor < lim_inf | vetor > lim_sup]
  indices <- which(vetor %in% outliers)
  
  # Print dos dados
  cat("\n Variável:", nome_var, "\n")
  cat("  Q1:", Q1, "\n")
  cat("  Q3:", Q3, "\n")
  cat("  IQ:", IQ, "\n")
  cat("  Limite Inferior:", lim_inf, "\n")
  cat("  Limite Superior:", lim_sup, "\n")
  cat("  Outliers:", outliers, "\n")
  cat("  Índices:", indices, "\n")
  
  # Boxplot com título informativo
  boxplot(vetor, main = paste("Boxplot -", nome_var),
          ylab = nome_var, col = "lightblue")
  points(indices, outliers, col = "red", pch = 19)  
}

# Lista de variáveis e nomes
variaveis <- list(
  aroma = aroma,
  sabor = sabor,
  sabor_res = sabor_res,
  acidez = acidez,
  corpo = corpo,
  equilibrio = equilibrio
)

# Layout para os gráficos dos boxplots com outliers
par(mfrow = c(2, 3))  # 2 linhas, 3 colunas

# Aplicar análise a cada variável
for (nome in names(variaveis)) {
  analise_outliers(variaveis[[nome]], nome)
}
