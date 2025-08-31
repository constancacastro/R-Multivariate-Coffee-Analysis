###  Clear all objects
rm(list=ls())
ls()

###  Import data
# Data copied directly from the provided file
coffee_data <- "Aro\tSab\tSabRes\tAci\tCor\tEqui\tVar
8.5\t8.5\t7.92\t8.0\t7.92\t8.25\tGesha
8.08\t8.17\t8.17\t8.25\t8.17\t8.08\tGesha
8.33\t8.33\t8.25\t7.83\t7.83\t8.17\tGesha
8.33\t8.17\t8.08\t8.0\t7.83\t8.25\tGesha
8.08\t8.0\t8.0\t7.75\t8.25\t8.17\tGesha
8.08\t8.0\t8.08\t8.08\t8.0\t8.0\tGesha
7.67\t8.17\t8.0\t8.33\t8.0\t8.0\tGesha
8.0\t8.17\t8.0\t7.92\t7.92\t7.92\tGesha
8.08\t8.17\t7.75\t7.92\t7.83\t8.0\tGesha
8.0\t7.92\t8.08\t7.92\t7.75\t8.0\tGesha
7.92\t7.92\t8.0\t7.92\t7.83\t7.92\tGesha
8.17\t8.08\t7.92\t8.0\t7.58\t7.83\tGesha
8.0\t8.0\t8.0\t7.92\t7.75\t7.92\tGesha
8.08\t8.17\t7.67\t7.83\t7.67\t7.92\tGesha
8.0\t7.92\t7.83\t7.92\t7.83\t7.83\tGesha
8.25\t8.08\t7.83\t7.75\t7.67\t7.75\tGesha
7.75\t7.92\t7.75\t8.0\t7.83\t7.92\tGesha
8.0\t7.92\t7.67\t8.0\t7.75\t7.83\tGesha
8.17\t8.08\t7.83\t7.67\t7.67\t7.75\tGesha
8.0\t8.0\t7.83\t7.83\t7.58\t7.83\tGesha
7.67\t7.92\t7.67\t7.75\t7.67\t7.58\tCaturra
7.67\t7.83\t7.58\t7.92\t7.67\t7.67\tCaturra
7.67\t7.92\t7.58\t7.75\t7.67\t7.58\tCaturra
7.92\t7.75\t7.42\t7.58\t7.92\t7.67\tCaturra
7.58\t7.83\t7.58\t7.67\t7.58\t7.58\tCaturra
7.75\t7.75\t7.5\t7.58\t7.83\t7.5\tCaturra
7.67\t7.67\t7.42\t7.75\t7.5\t7.75\tCaturra
7.58\t7.75\t7.42\t7.67\t7.5\t7.75\tCaturra
8.0\t7.67\t7.42\t7.58\t7.58\t7.42\tCaturra
7.58\t7.67\t7.58\t7.5\t7.33\t7.5\tCaturra
7.33\t7.58\t7.58\t7.5\t7.67\t7.67\tCaturra
7.67\t7.58\t7.42\t7.42\t7.5\t7.5\tCaturra
7.75\t7.67\t7.17\t7.67\t7.42\t7.42\tCaturra
7.67\t7.5\t7.33\t7.58\t7.33\t7.42\tCaturra
7.42\t7.42\t7.42\t7.33\t7.58\t7.33\tCaturra
7.5\t7.5\t7.33\t7.5\t7.33\t7.33\tCaturra
7.33\t7.42\t7.33\t7.42\t7.58\t7.42\tCaturra
7.33\t7.42\t7.25\t7.42\t7.42\t7.33\tCaturra
7.25\t7.25\t7.17\t7.33\t7.08\t7.25\tCaturra
7.5\t7.25\t7.17\t7.17\t7.17\t7.08\tCaturra"

# Create temporary file with data
temp_file <- tempfile(fileext = ".txt")
writeLines(coffee_data, temp_file)

# Read data from temporary file
coffee <- read.table(temp_file, header=TRUE, sep="\t")

###  Definition of variables
Aro <- coffee$Aro
Sab <- coffee$Sab
SabRes <- coffee$SabRes
Aci <- coffee$Aci
Cor <- coffee$Cor
Equi <- coffee$Equi
tipo <- coffee$Var

###  Get data by attribute
dados <- subset(coffee, select=Aro:Equi)

###  Definition of variables for homogeneity of variances tests - homoscedasticity
caracteristicas <- c(Aro, Sab, SabRes, Aci, Cor, Equi)
itens <- c(rep("Aro", nrow(coffee)), 
           rep("Sab", nrow(coffee)), 
           rep("SabRes", nrow(coffee)), 
           rep("Aci", nrow(coffee)), 
           rep("Cor", nrow(coffee)), 
           rep("Equi", nrow(coffee)))
caracteristicas_itens <- data.frame(caracteristicas, itens)

###  Summaries
##  Extended summary
# Load associated package
if (!require(fBasics)) install.packages("fBasics")
library(fBasics)
round(data.frame(basicStats(Aro), basicStats(Sab), basicStats(SabRes), 
                basicStats(Aci), basicStats(Cor), basicStats(Equi)), 3)

###  Test for PCA application validity

##  Bartlett's test of sphericity
# Load associated package
if (!require(psych)) install.packages("psych")
library(psych)
cortest.bartlett(cor(dados), nrow(dados))

# Test statistic value
-(nrow(dados)-1-(1/6)*(2*ncol(dados)+5))*log(det(cor(dados)))

##  Kaiser-Meyer-Olkin (KMO) test
# Measure of Sampling Adequacy (Overall MSA)
library(psych)
KMO(cor(dados))

###  Covariance matrix
cov(dados)

###  Correlation matrix
cor(dados)

###  Test for homogeneity of variances - homoscedasticity
##  Levene's test
if (!require(car)) install.packages("car")
library(car)
# Using median is preferable to mean when normality assumption is violated
leveneTest(caracteristicas, itens, center=mean)

##  Bartlett's test
bartlett.test(list(Aro, Sab, SabRes, Aci, Cor, Equi))

###  Correlogram
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)
if (!require(ggcorrplot)) install.packages("ggcorrplot")
library(ggcorrplot)

# Upper correlogram
ggcorrplot(cor(dados), hc.order = TRUE, type = "upper", lab = TRUE, lab_size = 3,
           method = "circle", colors = c("darkblue", "white", "lightblue"),
           title = "Correlogram", ggtheme = theme_bw())

# Lower correlogram
ggcorrplot(cor(dados), hc.order = TRUE, type = "lower", lab = TRUE, lab_size = 3,
           method = "circle", colors = c("tomato2", "white", "springgreen3"),
           title = "Correlogram", ggtheme = theme_bw())

if (!require(corrplot)) install.packages("corrplot")
library(corrplot)
corrplot(cor(dados), title = "Correlogram", method = "circle")

###  Determination of eigenvalues and eigenvectors
##  Get principal components
# Eigenvalues and eigenvectors of correlation matrix
eigen(cor(dados))

# PCA using prcomp()
prcomp(scale(dados))

###  Variable contributions to principal components
if (!require(FactoMineR)) install.packages("FactoMineR")
library(FactoMineR)

##  PCA with standardized data
pca_result <- PCA(scale(dados), scale.unit=TRUE, graph=FALSE)

##  Variable contributions to components
if (!require(factoextra)) install.packages("factoextra")
library(factoextra)

##  Variable contributions to first principal component PC1
fviz_contrib(pca_result, choice="var", axes=1) + 
  theme_minimal() + labs(title="1st component", x="", y="Contribution (%)")

# Loadings plot for PC1
load <- prcomp(scale(dados))$rotation
sorted.loadings <- load[order(load[,1]), 1]
dotchart(sorted.loadings, main="Loadings plot for PC1", 
         xlab="Loading values", cex=1.2, col="red")

##  Variable contributions to second principal component PC2
fviz_contrib(pca_result, choice="var", axes=2) + 
  theme_minimal() + labs(title="2nd component", x="", y="Contribution (%)")

# Loadings plot for PC2
sorted.loadings <- load[order(load[,2]), 2]
dotchart(sorted.loadings, main="Loadings plot for PC2", 
         xlab="Loading values", cex=1.2, col="red")

###  Contribution of each principal component
# Sum of eigenvalues
sum(diag(cor(dados)))
sum(diag(cov(scale(dados))))

# Percentage of total variance explained by each component
summary(prcomp(scale(dados)))

###  Choose number of principal components to select
##  Scree plot
plot(prcomp(scale(dados)), type="lines", main="Scree plot")
screeplot(prcomp(scale(dados)), type="lines", main="Scree plot")

library(factoextra)
fviz_eig(prcomp(scale(dados)), addlabels=TRUE, main="Scree plot",
         x="Principal components", y="Explained variance")

result <- prcomp(scale(dados))
var_expl <- round(result$sdev^2 / sum(result$sdev^2) * 100, 2)
qplot(c(1:6), var_expl) + 
  geom_text(hjust=0, vjust=-0.3, aes(label=var_expl)) + 
  geom_line() + 
  xlab("Principal components") + 
  ylab("Explained variance") + 
  ggtitle("Scree plot") + 
  ylim(0, 100)

##  Correlation between variables Xi and principal components Yj
cor(prcomp(scale(dados))$x, dados)

library(corrplot)
corrplot(cor(prcomp(scale(dados))$x, dados), method = "circle")

###  Representation of principal components in correlation circles
##  PC1 and PC2
circle <- function(center = c(0, 0), npoints = 100) {
  r = 1
  tt = seq(0, 2 * pi, length = npoints)
  xx = center[1] + r * cos(tt)
  yy = center[1] + r * sin(tt)
  return(data.frame(x = xx, y = yy))
}
corcir = circle(c(0, 0), npoints = 100)
correlations = as.data.frame(cor(dados, prcomp(scale(dados))$x))
arrows = data.frame(x1 = c(0, 0, 0, 0, 0, 0), y1 = c(0, 0, 0, 0, 0, 0), 
                    x2 = correlations$PC1, y2 = correlations$PC2)
ggplot() + 
  geom_path(data = corcir, aes(x = x, y = y), colour = "gray65") + 
  geom_segment(data = arrows, aes(x = x1, y = y1, xend = x2, yend = y2), colour = "gray65") + 
  geom_text(data = correlations, aes(x = PC1, y = PC2, label = rownames(cor(dados)))) + 
  geom_hline(yintercept = 0, colour = "gray65") + 
  geom_vline(xintercept = 0, colour = "gray65") + 
  xlim(-1.1, 1.1) + ylim(-1.1, 1.1) + 
  labs(x = "PC1", y = "PC2") + 
  ggtitle("Correlation circle")

###  Values (scores) of mean-centered principal components
prcomp(scale(dados))$x

###  Representation of mean-centered principal component scores
##  PC1 and PC2
ggplot(data = as.data.frame(prcomp(scale(dados))$x), 
       aes(x = PC1, y = PC2, color = tipo, 
           label = rownames(as.data.frame(prcomp(scale(dados))$x)))) +
  geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_point() +
  ggtitle("Scores plot")

###  Representation of mean-centered principal component scores
### and principal components as in correlation circles
##  PC1 and PC2
fviz_pca_biplot(prcomp(scale(dados)), axes=c(1,2), label = "var", 
                col.var="black", habillage=coffee$Var)

###  VARIMAX orthogonal rotation method for rotating principal components
##  Get principal components after rotation with VARIMAX orthogonal method
library(psych)
psych::principal(scale(dados), rotate="varimax", nfactors=2, scores=TRUE)$loadings

###  Values (scores) of principal components obtained from VARIMAX orthogonal rotation method
psych::principal(scale(dados), rotate="varimax", nfactors=2, scores=TRUE)$scores

###  Representation of principal component scores obtained from VARIMAX orthogonal rotation method
##  RC1 and RC2
varimax_results <- psych::principal(scale(dados), rotate="varimax", nfactors=2, scores=TRUE)
ggplot(data = as.data.frame(varimax_results$scores), 
       aes(x = RC1, y = RC2, color = tipo, 
           label = rownames(as.data.frame(varimax_results$scores)))) +
  geom_hline(yintercept = 0, colour = "gray65") +
  geom_vline(xintercept = 0, colour = "gray65") +
  geom_point() +
  ggtitle("Scores plot after VARIMAX rotation")
  
  ls
ls(
)
