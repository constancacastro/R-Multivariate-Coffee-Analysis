rm(list=ls())
ls()

if(!require(fBasics)) install.packages("fBasics", dependencies=TRUE)
if(!require(nortest)) install.packages("nortest", dependencies=TRUE)
if(!require(car)) install.packages("car", dependencies=TRUE)
if(!require(leaps)) install.packages("leaps", dependencies=TRUE)

library(fBasics)
library(nortest)
library(car)
library(leaps)

### Carregar os dados
dados <- read.table(file.choose(), header = TRUE)
dados$X7 <- as.factor(dados$X7)

### Estatísticas descritivas
round(data.frame(basicStats(dados[,1:6])), 3)

### Modelo de regressão múltipla
modelo <- lm(X2 ~ X1 + X3 + X4 + X5 + X6, data = dados)
summary(modelo)

### Estimações e resíduos
valores_estimados <- fitted(modelo)
residuos <- resid(modelo)
residuos_padronizados <- rstandard(modelo)

### Gráfico dos resíduos
dev.new()
plot(residuos, pch=16, col="blue", main="Resíduos", ylab="Resíduos")
abline(h=0, col="red", lwd=2)

### Resíduos vs Estimativas
dev.new()
plot(valores_estimados, residuos, pch=16, col="blue",
     main="Valores Estimados vs Resíduos",
     xlab="Valores Estimados", ylab="Resíduos")
abline(h=0, col="red", lwd=2)

### Resíduos padronizados
dev.new()
plot(valores_estimados, residuos_padronizados, pch=16, col="blue",
     main="Valores Estimados vs Resíduos Padronizados",
     xlab="Valores Estimados", ylab="Resíduos Padronizados")
abline(h=0, col="red", lwd=2)

### Estatísticas dos resíduos
mean(residuos)
sigma(modelo)

### Testes de normalidade
lillieTest(residuos)         # Do pacote fBasics
lillie.test(residuos)        # Do pacote nortest
shapiro.test(residuos)

### Gráfico Q-Q
dev.new()
qqPlot(residuos, main="Q-Q Plot dos Resíduos", xlab="Quantis Teóricos", ylab="Quantis Observados")

### Resumo breve dos resíduos
summary(residuos)

### Boxplot dos resíduos e outliers
dev.new()
boxplot(residuos, main="Boxplot dos Resíduos")

### Barreiras para outliers
q1 <- quantile(residuos, 0.25)
q3 <- quantile(residuos, 0.75)
iqr <- IQR(residuos)

limite_inferior_externo <- q1 - 3*iqr
limite_inferior_interno <- q1 - 1.5*iqr
limite_superior_interno <- q3 + 1.5*iqr
limite_superior_externo <- q3 + 3*iqr

outliers <- boxplot(residuos, plot=FALSE)$out
posicoes_outliers <- which(residuos %in% outliers)

list("Outliers" = outliers, "Posições" = posicoes_outliers)

### Inferência estatística
summary(modelo)
anova(modelo)
confint(modelo, level=0.95)

### Intervalo de previsão para a média das variáveis
valores_médios <- as.data.frame(t(colMeans(dados[,c("X1","X3","X4","X5","X6")])))
predict(modelo, newdata = valores_médios, level=0.95, interval="predict")

### Comparação de modelos com leaps - R²
leaps_r2 <- leaps(x = dados[,c("X1","X3","X4","X5","X6")], y = dados$X2, method = "r2", nbest = 3)
combine_r2 <- cbind(leaps_r2$which, leaps_r2$size, leaps_r2$r2)
dimnames(combine_r2) <- list(1:nrow(combine_r2), c("X1","X3","X4","X5","X6","Size","R2"))
round(combine_r2, 4)

### Comparação de modelos com leaps - R² ajustado
leaps_adjr2 <- leaps(x = dados[,c("X1","X3","X4","X5","X6")], y = dados$X2, method = "adjr2", nbest = 1)
combine_adjr2 <- cbind(leaps_adjr2$which, leaps_adjr2$size, leaps_adjr2$adjr2)
dimnames(combine_adjr2) <- list(1:nrow(combine_adjr2), c("X1","X3","X4","X5","X6","Size","AdjR2"))
round(combine_adjr2, 4)

### Stepwise - forward, backward, both
modelo_forward <- step(lm(X2 ~ 1, data = dados), direction = "forward", scope = ~ X1 + X3 + X4 + X5 + X6)
modelo_backward <- step(modelo, direction = "backward")
modelo_both <- step(modelo, direction = "both")

summary(modelo_forward)
summary(modelo_backward)
summary(modelo_both)
