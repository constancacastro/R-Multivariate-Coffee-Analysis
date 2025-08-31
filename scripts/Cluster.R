
R version 4.5.0 (2025-04-11) -- "How About a Twenty-Six"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.81 (8526) aarch64-apple-darwin20]

[History restored from /Users/constancacastro/.Rapp.history]

> rm(list=ls())
> ls()
character(0)
> cafe<-read.table(file.choose(), header=TRUE)
> 
> aroma <- cafe$X1
> sabor <- cafe$X2
> sabor_res <- cafe$X3
> acidez <- cafe$X4
> corpo <- cafe$X5
> equilibrio <- cafe$X6
> var_grao <- cafe$X7
> 
> row.names(cafe)<-cafe[,1]
Error in `.rowNamesDF<-`(x, value = value) : 
  duplicate 'row.names' are not allowed
In addition: Warning message:
non-unique values when setting 'row.names': ‘7.33’, ‘7.5’, ‘7.58’, ‘7.67’, ‘7.75’, ‘7.92’, ‘8’, ‘8.08’, ‘8.17’, ‘8.33’ 
> 
> dados<-subset(cafe, select = c(X1, X2, X3, X4, X5, X6,X7))
> dados<-subset(cafe, select = c(X1, X2, X3, X4, X5, X6))
> 
> dados<-subset(cafe, select = c(X1, X2, X3, X4, X5, X6,X7))
> scale(dados)
Error in colMeans(x, na.rm = TRUE) : 'x' must be numeric
> dados<-subset(cafe, select = c(X1, X2, X3, X4, X5, X6))
> scale(dados)
           X1          X2          X3          X4          X5          X6
1   2.1515593  2.20579674  0.80729121  0.97997790  0.98979030  1.79215360
2   0.7962464  1.08420518  1.63105775  1.95314364  1.99875086  1.20933942
3   1.6029803  1.62800715  1.89466304  0.31822520  0.62656450  1.51788810
4   1.6029803  1.08420518  1.33450180  0.97997790  0.62656450  1.79215360
5   0.7962464  0.50641558  1.07089650  0.00681216  2.32161823  1.51788810
6   0.7962464  0.50641558  1.33450180  1.29139094  1.31265768  0.93507393
7  -0.5267972  1.08420518  1.07089650  2.26455668  1.31265768  0.93507393
8   0.5380915  1.08420518  1.07089650  0.66856486  0.98979030  0.66080843
9   0.7962464  1.08420518  0.24712996  0.66856486  0.62656450  0.93507393
10  0.5380915  0.23451460  1.33450180  0.66856486  0.30369713  0.93507393
11  0.2799367  0.23451460  1.07089650  0.66856486  0.62656450  0.66080843
12  1.0866706  0.77831657  0.80729121  0.97997790 -0.38239605  0.35225975
13  0.5380915  0.50641558  1.07089650  0.66856486  0.30369713  0.66080843
14  0.7962464  1.08420518 -0.01647533  0.31822520 -0.01917025  0.66080843
15  0.5380915  0.23451460  0.51073526  0.66856486  0.62656450  0.35225975
16  1.3448254  0.77831657  0.51073526  0.00681216 -0.01917025  0.07799425
17 -0.2686424  0.23451460  0.24712996  0.97997790  0.62656450  0.66080843
18  0.5380915  0.23451460 -0.01647533  0.97997790  0.30369713  0.35225975
19  1.0866706  0.77831657  0.51073526 -0.30460088 -0.01917025  0.07799425
20  0.5380915  0.50641558  0.51073526  0.31822520 -0.38239605  0.35225975
21 -0.5267972  0.23451460 -0.01647533  0.00681216 -0.01917025 -0.50481993
22 -0.5267972 -0.07137401 -0.31303129  0.66856486 -0.01917025 -0.19627125
23 -0.5267972  0.23451460 -0.31303129  0.00681216 -0.01917025 -0.50481993
24  0.2799367 -0.34327499 -0.84024187 -0.65494054  0.98979030 -0.19627125
25 -0.8172214 -0.07137401 -0.31303129 -0.30460088 -0.38239605 -0.50481993
26 -0.2686424 -0.34327499 -0.57663658 -0.65494054  0.62656450 -0.77908542
27 -0.5267972 -0.61517598 -0.84024187  0.00681216 -0.70526343  0.07799425
28 -0.8172214 -0.34327499 -0.84024187 -0.30460088 -0.70526343  0.07799425
29  0.5380915 -0.61517598 -0.84024187 -0.65494054 -0.38239605 -1.05335092
30 -0.8172214 -0.61517598 -0.31303129 -0.96635358 -1.39135660 -0.77908542
31 -1.6239554 -0.92106459 -0.31303129 -0.96635358 -0.01917025 -0.19627125
32 -0.5267972 -0.92106459 -0.84024187 -1.27776662 -0.70526343 -0.77908542
33 -0.2686424 -0.61517598 -1.66400841 -0.30460088 -1.02813080 -1.05335092
34 -0.5267972 -1.19296557 -1.13679783 -0.65494054 -1.39135660 -1.05335092
35 -1.3335312 -1.46486656 -0.84024187 -1.62810629 -0.38239605 -1.36189960
36 -1.0753763 -1.19296557 -1.13679783 -0.96635358 -1.39135660 -1.36189960
37 -1.6239554 -1.46486656 -1.13679783 -1.27776662 -0.38239605 -1.05335092
38 -1.6239554 -1.46486656 -1.40040312 -1.27776662 -1.02813080 -1.36189960
39 -1.8821102 -2.04265615 -1.66400841 -1.62810629 -2.40031715 -1.63616510
40 -1.0753763 -2.04265615 -1.66400841 -2.25093236 -2.03709136 -2.21897928
attr(,"scaled:center")
     X1      X2      X3      X4      X5      X6 
7.83325 7.85100 7.67500 7.74825 7.67475 7.72725 
attr(,"scaled:scale")
       X1        X2        X3        X4        X5        X6 
0.3098915 0.2942248 0.3034840 0.2568935 0.2477798 0.2916882 
> 
> ###Diagrama de Perfil
> install.packages("profileR", dependencies=TRUE)
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/profileR_0.3-5.tgz'
Content type 'application/x-gzip' length 184820 bytes (180 KB)
==================================================
downloaded 180 KB


The downloaded binary packages are in
	/var/folders/jg/kxryft0n1y18qf2x7rk4dtrr0000gn/T//RtmpHTWTXm/downloaded_packages
> library(profileR)
Loading required package: ggplot2
Loading required package: RColorBrewer
Loading required package: reshape
Loading required package: lavaan
This is lavaan 0.6-19
lavaan is FREE software! Please report any bugs.
> dev.new()
> profileplot(dados,row.names(cafe),standardize=FALSE)
> 
> 
> ###Scree Plot
> #  Representação gráfica da soma de quadrados dos desvios dentro dos grupos vs número de clusters
> #  Within-cluster Sum of Squares (WSS)
> #  O argumento nc permite definir o número máximo de clusters a considerar
> 
> dev.new()
> wssplot<-function(data, nc=6, seed=1234){wss <- (nrow(data)-1)*sum(apply(data,2,var))
+   for (i in 2:nc){
+     set.seed(seed)
+     wss[i] <- sum(kmeans(data, centers=i)$withinss)}
+   plot(1:nc, wss, type="b", main="Scree plot", xlab="Número de clusters", ylab="Soma de quadrados dos desvios dentro dos grupos")}
> wssplot(dados, nc=6)
> 
> 
> ###  Determinação da matriz das distâncias
> ##  Distância euclidiana
> #  Caso seja necessário instalar o pacote
> #  install.packages("stats", dependencies=TRUE)
> #  Carregar um pacote associado
> library(stats)
> d_eucl<-dist(dados, method="euclidean")
> 
> 
> ##  Quadrado da distância de Mahalanobis
> #  Caso seja necessário instalar o pacote
> #  install.packages("biotools", dependencies=TRUE)
> #  Carregar um pacote associado
> library(biotools)
Error in library(biotools) : there is no package called ‘biotools’
> d_maha<-D2.dist(dados, cov(dados))
Error in D2.dist(dados, cov(dados)) : could not find function "D2.dist"
> install.packages("biotools", dependencies=TRUE)
also installing the dependencies ‘dotCall64’, ‘xtable’, ‘sourcetools’, ‘spam’, ‘spData’, ‘sf’, ‘shiny’, ‘rhandsontable’, ‘shinydashboard’, ‘fields’, ‘spdep’, ‘soilphysics’, ‘tkrplot’, ‘rpanel’, ‘SpatialEpi’

trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/dotCall64_1.2.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/xtable_1.8-4.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/sourcetools_0.1.7-1.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/spam_2.11-1.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/spData_2.3.4.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/sf_1.0-21.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/shiny_1.10.0.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/rhandsontable_0.3.8.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/shinydashboard_0.7.3.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/fields_16.3.1.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/spdep_1.3-11.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/soilphysics_5.0.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/tkrplot_0.0-30.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/rpanel_1.1-5.2.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/SpatialEpi_1.2.8.tgz'
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/biotools_4.3.tgz'

The downloaded binary packages are in
	/var/folders/jg/kxryft0n1y18qf2x7rk4dtrr0000gn/T//RtmpHTWTXm/downloaded_packages
> ##  Quadrado da distância de Mahalanobis
> #  Caso seja necessário instalar o pacote
> #  install.packages("biotools", dependencies=TRUE)
> #  Carregar um pacote associado
> library(biotools)
Loading required package: MASS
---
biotools version 4.3
> d_maha<-D2.dist(dados, cov(dados))
> 
> ###  Método hierarquico aglomerativo, com a distância euclidiana e o método da ligação simples (single linkage)
> ##  k=2 clusters
> simples<-hclust(d_eucl,method="single")
> dev.new()
> plot(simples, main="Dendrograma", ylab="Distâncias entre grupos")
> 
> #  Distribuição das variáveis pelos clusters
> cutree(simples,k=2)
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  1  1  1  1  1  2  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 1  1  1  1  1  1  1  1  1  1  1  1  1 
> dev.new()
> plot(simples, main="Dendrograma", ylab="Distâncias entre grupos")
> rect.hclust(simples,k=2,border="red")
> 
> #  Representação gráfica da análise de clusters
> #  Caso seja necessário instalar o pacote
> #  install.packages("cluster", dependencies=TRUE)
> #  Carregar um pacote associado
> #  Este pacote permite representar, com o auxílio de ACP, a solução obtida pela análise de clusters em duas dimensões
> library(cluster)
> dev.new()
> clusplot(dados, cutree(simples,k=2), main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> 
> install.packages("factoextra", dependencies=TRUE)
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/factoextra_1.0.7.tgz'
Content type 'application/x-gzip' length 422617 bytes (412 KB)
==================================================
downloaded 412 KB


The downloaded binary packages are in
	/var/folders/jg/kxryft0n1y18qf2x7rk4dtrr0000gn/T//RtmpHTWTXm/downloaded_packages
> 
> library(factoextra)
Welcome! Want to learn more? See two factoextra-related books at https://goo.gl/ve3WBa
> dev.new()
> fviz_cluster(list(data=dados,cluster=cutree(simples,k=2)), ellipse.type="convex", main='Representação gráfica da análise de clusters',repel=TRUE, show.clust.cent=TRUE, ggtheme=theme_minimal() )
> 
> #  Tabela com a distribuição das variáveis pelos clusters
> table(row.names(composicao_alimentos),cutree(simples,k=2))
Error: object 'composicao_alimentos' not found
> #  Tabela com a distribuição das variáveis pelos clusters
> table(row.names(composicao_alimentos),cutree(simples,k=2))
Error: object 'composicao_alimentos' not found
> 
> cophenetic(simples)
           1         2         3         4         5         6         7
2  0.4349713                                                            
3  0.4141256 0.4349713                                                  
4  0.4141256 0.4349713 0.2996665                                        
5  0.4546427 0.4546427 0.4546427 0.4546427                              
6  0.4349713 0.3181195 0.4349713 0.4349713 0.4546427                    
7  0.4885693 0.4885693 0.4885693 0.4885693 0.4885693 0.4885693          
8  0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
9  0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
10 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
11 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
12 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
13 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
14 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
15 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
16 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
17 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2887906 0.4885693
18 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
19 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
20 0.4349713 0.3181195 0.4349713 0.4349713 0.4546427 0.2830194 0.4885693
21 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
22 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
23 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
24 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
25 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
26 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
27 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
28 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
29 0.4349713 0.3797368 0.4349713 0.4349713 0.4546427 0.3797368 0.4885693
30 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
31 0.4349713 0.4063250 0.4349713 0.4349713 0.4546427 0.4063250 0.4885693
32 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
33 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
34 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
35 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
36 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
37 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
38 0.4349713 0.3713489 0.4349713 0.4349713 0.4546427 0.3713489 0.4885693
39 0.4349713 0.4144876 0.4349713 0.4349713 0.4546427 0.4144876 0.4885693
40 0.4349713 0.4144876 0.4349713 0.4349713 0.4546427 0.4144876 0.4885693
           8         9        10        11        12        13        14
2                                                                       
3                                                                       
4                                                                       
5                                                                       
6                                                                       
7                                                                       
8                                                                       
9  0.2776689                                                            
10 0.2404163 0.2776689                                                  
11 0.2404163 0.2776689 0.1385641                                        
12 0.2720294 0.2776689 0.2720294 0.2720294                              
13 0.2404163 0.2776689 0.1385641 0.1385641 0.2720294                    
14 0.2776689 0.2156386 0.2776689 0.2776689 0.2776689 0.2776689          
15 0.2404163 0.2776689 0.2083267 0.2083267 0.2720294 0.2083267 0.2776689
16 0.2745906 0.2776689 0.2745906 0.2745906 0.2745906 0.2745906 0.2776689
17 0.2887906 0.2887906 0.2887906 0.2887906 0.2887906 0.2887906 0.2887906
18 0.2404163 0.2776689 0.2083267 0.2083267 0.2720294 0.2083267 0.2776689
19 0.2745906 0.2776689 0.2745906 0.2745906 0.2745906 0.2745906 0.2776689
20 0.2720294 0.2776689 0.2720294 0.2720294 0.2688866 0.2720294 0.2776689
21 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
22 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
23 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
24 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
25 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
26 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
27 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
28 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
29 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368
30 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
31 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250
32 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
33 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
34 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
35 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
36 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
37 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
38 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489
39 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
40 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
          15        16        17        18        19        20        21
2                                                                       
3                                                                       
4                                                                       
5                                                                       
6                                                                       
7                                                                       
8                                                                       
9                                                                       
10                                                                      
11                                                                      
12                                                                      
13                                                                      
14                                                                      
15                                                                      
16 0.2745906                                                            
17 0.2887906 0.2887906                                                  
18 0.1959592 0.2745906 0.2887906                                        
19 0.2745906 0.1131371 0.2887906 0.2745906                              
20 0.2720294 0.2745906 0.2887906 0.2720294 0.2745906                    
21 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489          
22 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.2123676
23 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.0900000
24 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3203123
25 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.1752142
26 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3203123
27 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.2594224
28 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.2594224
29 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368
30 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
31 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250
32 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
33 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
34 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
35 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
36 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
37 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
38 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3713489 0.3512834
39 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
40 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
          22        23        24        25        26        27        28
2                                                                       
3                                                                       
4                                                                       
5                                                                       
6                                                                       
7                                                                       
8                                                                       
9                                                                       
10                                                                      
11                                                                      
12                                                                      
13                                                                      
14                                                                      
15                                                                      
16                                                                      
17                                                                      
18                                                                      
19                                                                      
20                                                                      
21                                                                      
22                                                                      
23 0.2123676                                                            
24 0.3203123 0.3203123                                                  
25 0.2123676 0.1752142 0.3203123                                        
26 0.3203123 0.3203123 0.2688866 0.3203123                              
27 0.2594224 0.2594224 0.3203123 0.2594224 0.3203123                    
28 0.2594224 0.2594224 0.3203123 0.2594224 0.3203123 0.1445683          
29 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368 0.3797368
30 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
31 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250 0.4063250
32 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
33 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
34 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
35 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
36 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
37 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
38 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834 0.3512834
39 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
40 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
          29        30        31        32        33        34        35
2                                                                       
3                                                                       
4                                                                       
5                                                                       
6                                                                       
7                                                                       
8                                                                       
9                                                                       
10                                                                      
11                                                                      
12                                                                      
13                                                                      
14                                                                      
15                                                                      
16                                                                      
17                                                                      
18                                                                      
19                                                                      
20                                                                      
21                                                                      
22                                                                      
23                                                                      
24                                                                      
25                                                                      
26                                                                      
27                                                                      
28                                                                      
29                                                                      
30 0.3797368                                                            
31 0.4063250 0.4063250                                                  
32 0.3797368 0.2776689 0.4063250                                        
33 0.3797368 0.2776689 0.4063250 0.2776689                              
34 0.3797368 0.2776689 0.4063250 0.2745906 0.2776689                    
35 0.3797368 0.2776689 0.4063250 0.2745906 0.2776689 0.2370654          
36 0.3797368 0.2776689 0.4063250 0.2745906 0.2776689 0.2083267 0.2370654
37 0.3797368 0.2776689 0.4063250 0.2745906 0.2776689 0.2370654 0.1800000
38 0.3797368 0.2776689 0.4063250 0.2745906 0.2776689 0.2370654 0.2002498
39 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
40 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876 0.4144876
          36        37        38        39
2                                         
3                                         
4                                         
5                                         
6                                         
7                                         
8                                         
9                                         
10                                        
11                                        
12                                        
13                                        
14                                        
15                                        
16                                        
17                                        
18                                        
19                                        
20                                        
21                                        
22                                        
23                                        
24                                        
25                                        
26                                        
27                                        
28                                        
29                                        
30                                        
31                                        
32                                        
33                                        
34                                        
35                                        
36                                        
37 0.2370654                              
38 0.2370654 0.2002498                    
39 0.4144876 0.4144876 0.4144876          
40 0.4144876 0.4144876 0.4144876 0.3536948
> cor(c(d_eucl), c(cophenetic(simples)), method = "pearson")
[1] 0.5693894
> 
> library(NbClust)
Error in library(NbClust) : there is no package called ‘NbClust’
> dev.new()
> NbClust(data = dados, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 10, method = "single")
Error in NbClust(data = dados, diss = NULL, distance = "euclidean", min.nc = 2,  : 
  could not find function "NbClust"
> 
> install.packages("NbClust", dependencies=TRUE)
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/NbClust_3.0.1.tgz'
Content type 'application/x-gzip' length 119775 bytes (116 KB)
==================================================
downloaded 116 KB


The downloaded binary packages are in
	/var/folders/jg/kxryft0n1y18qf2x7rk4dtrr0000gn/T//RtmpHTWTXm/downloaded_packages
> library(NbClust)
> dev.new()
> NbClust(data = dados, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 10, method = "single")
*** : The Hubert index is a graphical method of determining the number of clusters.
                In the plot of Hubert index, we seek a significant knee that corresponds to a 
                significant increase of the value of the measure i.e the significant peak in Hubert
                index second differences plot. 
 
*** : The D index is a graphical method of determining the number of clusters. 
                In the plot of D index, we seek a significant knee (the significant peak in Dindex
                second differences plot) that corresponds to a significant increase of the value of
                the measure. 
 
******************************************************************* 
* Among all indices:                                                
* 6 proposed 2 as the best number of clusters 
* 2 proposed 3 as the best number of clusters 
* 3 proposed 4 as the best number of clusters 
* 1 proposed 6 as the best number of clusters 
* 10 proposed 9 as the best number of clusters 
* 2 proposed 10 as the best number of clusters 

                   ***** Conclusion *****                            
 
* According to the majority rule, the best number of clusters is  9 
 
 
******************************************************************* 
$All.index
        KL      CH Hartigan     CCC    Scott Marriot TrCovW  TraceW Friedman
2   1.7773  1.6093   1.6470 32.3048 302.5519  1.7048 1.2425 18.2279 28614.96
3   0.7229  1.6192   9.4090 22.1703 322.1222  2.3517 1.2383 17.4707 31260.72
4   0.9230  4.3690   9.6901 18.8509 353.5857  1.9039 0.5449 13.9287 36181.58
5   3.4406  6.3984   0.3616 17.0526 371.5277  1.8996 0.5728 10.9746 37179.11
6   2.8599  5.0941   1.1869 14.8567 380.3267  2.1953 0.5564 10.8624 38586.64
7   0.7545  4.4561   0.7450 13.1498 393.2671  2.1622 0.4776 10.4960 40888.84
8   0.0353  3.8906  55.7654 11.6300 405.8027  2.0643 0.4403 10.2643 43368.07
9  88.8120 15.7978   0.5269 14.7218 479.7029  0.4118 0.1857  3.7424 48215.10
10  0.0619 13.8772  13.7679  8.8773 485.8385  0.4361 0.1736  3.6799 49376.92
       Rubin Cindex     DB Silhouette   Duda Pseudot2   Beale Ratkowsky   Ball
2   792.2513 0.3341 0.7683     0.1261 0.9667   1.2752  0.1291    0.1375 9.1139
3   826.5881 0.3305 0.7630     0.1127 0.7973   9.1547  0.9519    0.1631 5.8236
4  1036.7871 0.3186 0.7058     0.1917 0.7855   9.0116  1.0197    0.2555 3.4822
5  1315.8589 0.3480 0.6746     0.0992 2.6868  -0.6278 -1.2077    0.2907 2.1949
6  1329.4548 0.3487 0.6270     0.0984 0.9799   0.6369  0.0766    0.2672 1.8104
7  1375.8632 0.3469 0.7032    -0.0250 0.9921   0.2382  0.0296    0.2525 1.4994
8  1406.9258 0.3477 0.7965    -0.0350 0.3579  52.0313  6.6727    0.2393 1.2830
9  3858.7307 0.4148 0.7314     0.2347 2.2896   0.0000  0.0000    0.2966 0.4158
10 3924.3207 0.4154 0.6794     0.2516 0.4783  15.2719  3.9171    0.2819 0.3680
   Ptbiserial     Frey McClain   Dunn Hubert SDindex Dindex   SDbw
2      0.0839   1.1417  0.0438 0.2021 0.0475  5.3942 0.6069 1.4945
3      0.1140  -1.6414  0.0911 0.1881 0.0462  4.0717 0.5854 0.6591
4      0.3116  -0.7145  0.2144 0.1881 0.0679  4.2197 0.5201 0.2414
5      0.4524  -5.2460  0.2913 0.2130 0.0944  4.8407 0.4663 0.1851
6      0.4461  13.7975  0.2967 0.2129 0.0948  6.9437 0.4569 0.1414
7      0.4164 -30.8955  0.3684 0.2088 0.0937  6.5472 0.4416 0.1205
8      0.3792   0.1600  0.4533 0.1952 0.0927  6.4694 0.4292 0.1062
9      0.5760  -2.4748  1.0908 0.3965 0.0987  6.7124 0.2685 0.0731
10     0.5735   0.6430  1.1001 0.3777 0.0992  6.7222 0.2597 0.0563

$All.CriticalValues
   CritValue_Duda CritValue_PseudoT2 Fvalue_Beale
2          0.6188            22.7966       0.9926
3          0.6152            22.5206       0.4589
4          0.6035            21.6839       0.4136
5         -0.0981           -11.1930       1.0000
6          0.5948            21.1187       0.9983
7          0.5902            20.8338       0.9999
8          0.5853            20.5473       0.0000
9         -0.3211             0.0000          NaN
10         0.4643            16.1499       0.0017

$Best.nc
                    KL      CH Hartigan     CCC   Scott Marriot TrCovW TraceW
Number_clusters  9.000  9.0000   9.0000  2.0000  9.0000  9.0000 4.0000 9.0000
Value_Index     88.812 15.7978  55.2385 32.3048 73.9001  1.6768 0.6934 6.4593
                Friedman     Rubin Cindex    DB Silhouette   Duda PseudoT2  Beale
Number_clusters    4.000     9.000 4.0000 6.000    10.0000 2.0000   2.0000 2.0000
Value_Index     4920.858 -2386.215 0.3186 0.627     0.2516 0.9667   1.2752 0.1291
                Ratkowsky   Ball PtBiserial   Frey McClain   Dunn Hubert SDindex
Number_clusters    9.0000 3.0000      9.000 2.0000  2.0000 9.0000      0  3.0000
Value_Index        0.2966 3.2904      0.576 1.1417  0.0438 0.3965      0  4.0717
                Dindex    SDbw
Number_clusters      0 10.0000
Value_Index          0  0.0563

$Best.partition
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  2  3  3  4  2  5  2  2  2  2  2  2  2  2  2  2  2  2  2  6  6  6  6  6  6  6 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 6  7  6  8  6  6  6  6  6  6  6  9  9 

Warning message:
In pf(beale, pp, df2) : NaNs produced
> 
> install.packages("factoextra", dependencies=TRUE)
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/factoextra_1.0.7.tgz'
Content type 'application/x-gzip' length 422617 bytes (412 KB)
==================================================
downloaded 412 KB


The downloaded binary packages are in
	/var/folders/jg/kxryft0n1y18qf2x7rk4dtrr0000gn/T//RtmpHTWTXm/downloaded_packages
> 
> library(factoextra)
> dev.new()
> fviz_nbclust(NbClust(data = dados, diss = NULL, distance = "euclidean", min.nc = 2, max.nc = 10, method = "single"))
*** : The Hubert index is a graphical method of determining the number of clusters.
                In the plot of Hubert index, we seek a significant knee that corresponds to a 
                significant increase of the value of the measure i.e the significant peak in Hubert
                index second differences plot. 
 
*** : The D index is a graphical method of determining the number of clusters. 
                In the plot of D index, we seek a significant knee (the significant peak in Dindex
                second differences plot) that corresponds to a significant increase of the value of
                the measure. 
 
******************************************************************* 
* Among all indices:                                                
* 6 proposed 2 as the best number of clusters 
* 2 proposed 3 as the best number of clusters 
* 3 proposed 4 as the best number of clusters 
* 1 proposed 6 as the best number of clusters 
* 10 proposed 9 as the best number of clusters 
* 2 proposed 10 as the best number of clusters 

                   ***** Conclusion *****                            
 
* According to the majority rule, the best number of clusters is  9 
 
 
******************************************************************* 
Error in if (class(best_nc) == "numeric") print(best_nc) else if (class(best_nc) ==  : 
  the condition has length > 1
In addition: Warning message:
In pf(beale, pp, df2) : NaNs produced
> 
> ##  Coeficiente de silhouette
> #  Este coeficiente mede o quão bem uma observação está associada a um cluster e estima a distância média entre os clusters
> #  Caso seja necessário instalar o pacote
> #  install.packages("factoextra", dependencies=TRUE)
> #  Carregar um pacote associado
> library(factoextra)
> dev.new()
> fviz_silhouette(eclust(dados,"hclust",k=2,hc_metric="euclidean",hc_method="single",graph=FALSE), palette = "jco", ggtheme=theme_classic())
  cluster size ave.sil.width
1       1   39           0.1
2       2    1           0.0
> 
> ###  Método hierarquico aglomerativo, com a distância euclidiana e o método da ligação completa (complete linkage)
> ##  k=2 clusters
> completa<-hclust(d_eucl,method="complete")
> dev.new()
> plot(completa, main="Dendrograma", ylab="Distâncias entre grupos")
> 
> #  Distribuição das variáveis pelos clusters
> cutree(completa,k=2)
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  2  2  2  2  2  2  2 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 2  2  2  2  2  2  2  2  2  2  2  2  2 
> dev.new()
> plot(completa, main="Dendrograma", ylab="Distâncias entre grupos")
> rect.hclust(completa,k=2,border="red")
> 
> install.packages("cluster", dependencies=TRUE)
trying URL 'https://www.stats.bris.ac.uk/R/bin/macosx/big-sur-arm64/contrib/4.5/cluster_2.1.8.1.tgz'
Content type 'application/x-gzip' length 629285 bytes (614 KB)
==================================================
downloaded 614 KB


The downloaded binary packages are in
	/var/folders/jg/kxryft0n1y18qf2x7rk4dtrr0000gn/T//RtmpHTWTXm/downloaded_packages
> library(cluster)
> dev.new()
> clusplot(dados, cutree(completa,k=2), main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> library(factoextra)
> dev.new()
> fviz_cluster(list(data=dados,cluster=cutree(completa,k=2)), ellipse.type="convex", main='Representação gráfica da análise de clusters',repel=TRUE, show.clust.cent=TRUE, ggtheme=theme_minimal() )
> 
> 
> ###  Método hierarquico aglomerativo, com a distância euclidiana e o método da ligação média (average linkage)
> ##  k=2 clusters
> media<-hclust(d_eucl,method="average")
> dev.new()
> plot(media, main="Dendrograma", ylab="Distâncias entre grupos")
> library(cluster)
> dev.new()
> clusplot(dados, cutree(media,k=2), main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> library(factoextra)
> dev.new()
> fviz_cluster(list(data=dados,cluster=cutree(media,k=2)), ellipse.type="convex", main='Representação gráfica da análise de clusters (average)',repel=TRUE, show.clust.cent=TRUE, ggtheme=theme_minimal() )
> 
> 
> ###  Método hierarquico aglomerativo, com o quadrado da distância de Mahalanobis e o método da ligação simples (single linkage)
> ##  k=2 clusters
> simples<-hclust(d_maha,method="single")
> dev.new()
> plot(simples, main="Dendrograma", ylab="Distâncias entre grupos")
> 
> #  Distribuição das variáveis pelos clusters
> cutree(simples,k=2)
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  1  1  1  2  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 1  1  1  1  1  1  1  1  1  1  1  1  1 
> dev.new()
> plot(simples, main="Dendrograma", ylab="Distâncias entre grupos")
> rect.hclust(simples,k=2,border="red")
> 
> library(cluster)
> dev.new()
> clusplot(dados, cutree(simples,k=2), main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> library(factoextra)
> dev.new()
> fviz_cluster(list(data=dados,cluster=cutree(simples,k=2)), ellipse.type="convex", main='Representação gráfica da análise de clusters',repel=TRUE, show.clust.cent=TRUE, ggtheme=theme_minimal() )
> 
> ###  Método hierarquico aglomerativo, com o quadrado da distância Mahalanobis e o método da ligação completa (complete linkage)
> ##  k=2 clusters
> completa<-hclust(d_maha,method="complete")
> dev.new()
> plot(completa, main="Dendrograma", ylab="Distâncias entre grupos")
> 
> #  Distribuição das variáveis pelos clusters
> cutree(completa,k=2)
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  2  1  1  1  2  2  2  1  1  1  1  1  1  2  1  2  2  1  1  2  2  2  1  2  1  1 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 1  1  1  1  1  1  1  1  1  1  1  1  1 
> dev.new()
> plot(completa, main="Dendrograma", ylab="Distâncias entre grupos")
> rect.hclust(completa,k=2,border="red")
> 
> library(cluster)
> dev.new()
> clusplot(dados, cutree(completa,k=2), main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> library(factoextra)
> dev.new()
> fviz_cluster(list(data=dados,cluster=cutree(completa,k=2)), ellipse.type="convex", main='Representação gráfica da análise de clusters',repel=TRUE, show.clust.cent=TRUE, ggtheme=theme_minimal() )
> 
> cophenetic(completa)
            1          2          3          4          5          6          7
2  35.3086370                                                                  
3  29.7540787 35.3086370                                                       
4  29.7540787 35.3086370 13.8994922                                            
5  32.7820639 35.3086370 32.7820639 32.7820639                                 
6  35.3086370  3.4902928 35.3086370 35.3086370 35.3086370                      
7  35.3086370 15.4907441 35.3086370 35.3086370 35.3086370 15.4907441           
8  35.3086370 15.4907441 35.3086370 35.3086370 35.3086370 15.4907441 10.9745240
9   3.2248817 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
10 29.7540787 35.3086370 13.8994922  6.9494886 32.7820639 35.3086370 35.3086370
11 29.7540787 35.3086370 13.8994922  6.9494886 32.7820639 35.3086370 35.3086370
12 28.2100674 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
13 29.7540787 35.3086370 13.8994922  6.9494886 32.7820639 35.3086370 35.3086370
14  3.2248817 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
15 35.3086370  3.4902928 35.3086370 35.3086370 35.3086370  1.5673610 15.4907441
16 28.2100674 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
17 35.3086370  7.9444883 35.3086370 35.3086370 35.3086370  7.9444883 15.4907441
18 35.3086370  7.9444883 35.3086370 35.3086370 35.3086370  7.9444883 15.4907441
19 28.2100674 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
20 28.2100674 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
21 35.3086370 15.4907441 35.3086370 35.3086370 35.3086370 15.4907441 10.9745240
22 35.3086370  7.9444883 35.3086370 35.3086370 35.3086370  7.9444883 15.4907441
23 35.3086370 15.4907441 35.3086370 35.3086370 35.3086370 15.4907441 10.9745240
24 18.9720116 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
25 35.3086370 15.4907441 35.3086370 35.3086370 35.3086370 15.4907441 10.9745240
26 18.9720116 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
27 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
28 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
29 28.2100674 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
30 29.7540787 35.3086370  8.0401144 13.8994922 32.7820639 35.3086370 35.3086370
31 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
32 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
33 18.9720116 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
34 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
35 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
36 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
37 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
38 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
39 29.7540787 35.3086370 23.3655528 23.3655528 32.7820639 35.3086370 35.3086370
40 28.2100674 35.3086370 29.7540787 29.7540787 32.7820639 35.3086370 35.3086370
            8          9         10         11         12         13         14
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9  35.3086370                                                                  
10 35.3086370 29.7540787                                                       
11 35.3086370 29.7540787  1.8692581                                            
12 35.3086370 28.2100674 29.7540787 29.7540787                                 
13 35.3086370 29.7540787  1.8692581  0.7383595 29.7540787                      
14 35.3086370  1.0774976 29.7540787 29.7540787 28.2100674 29.7540787           
15 15.4907441 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
16 35.3086370 28.2100674 29.7540787 29.7540787  7.5096913 29.7540787 28.2100674
17 15.4907441 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
18 15.4907441 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
19 35.3086370 28.2100674 29.7540787 29.7540787  7.5096913 29.7540787 28.2100674
20 35.3086370 28.2100674 29.7540787 29.7540787  2.6413164 29.7540787 28.2100674
21  2.9199506 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
22 15.4907441 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
23  2.9199506 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
24 35.3086370 18.9720116 29.7540787 29.7540787 28.2100674 29.7540787 18.9720116
25  2.9199506 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370 35.3086370
26 35.3086370 18.9720116 29.7540787 29.7540787 28.2100674 29.7540787 18.9720116
27 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
28 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
29 35.3086370 28.2100674 29.7540787 29.7540787 11.8765214 29.7540787 28.2100674
30 35.3086370 29.7540787 13.8994922 13.8994922 29.7540787 13.8994922 29.7540787
31 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
32 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
33 35.3086370 18.9720116 29.7540787 29.7540787 28.2100674 29.7540787 18.9720116
34 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
35 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
36 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
37 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
38 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
39 35.3086370 29.7540787 23.3655528 23.3655528 29.7540787 23.3655528 29.7540787
40 35.3086370 28.2100674 29.7540787 29.7540787 11.8765214 29.7540787 28.2100674
           15         16         17         18         19         20         21
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9                                                                              
10                                                                             
11                                                                             
12                                                                             
13                                                                             
14                                                                             
15                                                                             
16 35.3086370                                                                  
17  7.9444883 35.3086370                                                       
18  7.9444883 35.3086370  3.8658178                                            
19 35.3086370  0.9012417 35.3086370 35.3086370                                 
20 35.3086370  7.5096913 35.3086370 35.3086370  7.5096913                      
21 15.4907441 35.3086370 15.4907441 15.4907441 35.3086370 35.3086370           
22  7.9444883 35.3086370  2.0791296  3.8658178 35.3086370 35.3086370 15.4907441
23 15.4907441 35.3086370 15.4907441 15.4907441 35.3086370 35.3086370  0.5043365
24 35.3086370 28.2100674 35.3086370 35.3086370 28.2100674 28.2100674 35.3086370
25 15.4907441 35.3086370 15.4907441 15.4907441 35.3086370 35.3086370  1.0874879
26 35.3086370 28.2100674 35.3086370 35.3086370 28.2100674 28.2100674 35.3086370
27 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
28 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
29 35.3086370 11.8765214 35.3086370 35.3086370 11.8765214 11.8765214 35.3086370
30 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
31 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
32 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
33 35.3086370 28.2100674 35.3086370 35.3086370 28.2100674 28.2100674 35.3086370
34 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
35 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
36 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
37 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
38 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
39 35.3086370 29.7540787 35.3086370 35.3086370 29.7540787 29.7540787 35.3086370
40 35.3086370 11.8765214 35.3086370 35.3086370 11.8765214 11.8765214 35.3086370
           22         23         24         25         26         27         28
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9                                                                              
10                                                                             
11                                                                             
12                                                                             
13                                                                             
14                                                                             
15                                                                             
16                                                                             
17                                                                             
18                                                                             
19                                                                             
20                                                                             
21                                                                             
22                                                                             
23 15.4907441                                                                  
24 35.3086370 35.3086370                                                       
25 15.4907441  1.0874879 35.3086370                                            
26 35.3086370 35.3086370  5.2448180 35.3086370                                 
27 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787                      
28 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787  2.7611020           
29 35.3086370 35.3086370 28.2100674 35.3086370 28.2100674 29.7540787 29.7540787
30 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 23.3655528 23.3655528
31 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 18.1660904 18.1660904
32 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 18.1660904 18.1660904
33 35.3086370 35.3086370 11.8711458 35.3086370 11.8711458 29.7540787 29.7540787
34 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 10.1015337 10.1015337
35 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 18.1660904 18.1660904
36 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 10.1015337 10.1015337
37 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 18.1660904 18.1660904
38 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 18.1660904 18.1660904
39 35.3086370 35.3086370 29.7540787 35.3086370 29.7540787 10.1015337 10.1015337
40 35.3086370 35.3086370 28.2100674 35.3086370 28.2100674 29.7540787 29.7540787
           29         30         31         32         33         34         35
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9                                                                              
10                                                                             
11                                                                             
12                                                                             
13                                                                             
14                                                                             
15                                                                             
16                                                                             
17                                                                             
18                                                                             
19                                                                             
20                                                                             
21                                                                             
22                                                                             
23                                                                             
24                                                                             
25                                                                             
26                                                                             
27                                                                             
28                                                                             
29                                                                             
30 29.7540787                                                                  
31 29.7540787 23.3655528                                                       
32 29.7540787 23.3655528  7.3865519                                            
33 28.2100674 29.7540787 29.7540787 29.7540787                                 
34 29.7540787 23.3655528 18.1660904 18.1660904 29.7540787                      
35 29.7540787 23.3655528  7.3865519  3.5586623 29.7540787 18.1660904           
36 29.7540787 23.3655528 18.1660904 18.1660904 29.7540787  2.4711373 18.1660904
37 29.7540787 23.3655528  7.3865519  2.8752543 29.7540787 18.1660904  3.5586623
38 29.7540787 23.3655528  7.3865519  2.8752543 29.7540787 18.1660904  3.5586623
39 29.7540787 23.3655528 18.1660904 18.1660904 29.7540787  4.7848751 18.1660904
40  6.7721803 29.7540787 29.7540787 29.7540787 28.2100674 29.7540787 29.7540787
           36         37         38         39
2                                             
3                                             
4                                             
5                                             
6                                             
7                                             
8                                             
9                                             
10                                            
11                                            
12                                            
13                                            
14                                            
15                                            
16                                            
17                                            
18                                            
19                                            
20                                            
21                                            
22                                            
23                                            
24                                            
25                                            
26                                            
27                                            
28                                            
29                                            
30                                            
31                                            
32                                            
33                                            
34                                            
35                                            
36                                            
37 18.1660904                                 
38 18.1660904  1.1472467                      
39  4.7848751 18.1660904 18.1660904           
40 29.7540787 29.7540787 29.7540787 29.7540787
> cor(c(d_maha), c(cophenetic(completa)), method = "pearson")
[1] 0.3623826
> 
> 
> library(NbClust)
> dev.new()
> NbClust(data = dados, diss = d_maha, distance = NULL, min.nc = 2, max.nc = 10, method = "complete")
*** : The Hubert index is a graphical method of determining the number of clusters.
                In the plot of Hubert index, we seek a significant knee that corresponds to a 
                significant increase of the value of the measure i.e the significant peak in Hubert
                index second differences plot. 
 
*** : The D index is a graphical method of determining the number of clusters. 
                In the plot of D index, we seek a significant knee (the significant peak in Dindex
                second differences plot) that corresponds to a significant increase of the value of
                the measure. 
 
******************************************************************* 
* Among all indices:                                                
* 5 proposed 2 as the best number of clusters 
* 3 proposed 3 as the best number of clusters 
* 3 proposed 4 as the best number of clusters 
* 1 proposed 5 as the best number of clusters 
* 3 proposed 6 as the best number of clusters 
* 3 proposed 7 as the best number of clusters 
* 1 proposed 8 as the best number of clusters 
* 3 proposed 9 as the best number of clusters 
* 1 proposed 10 as the best number of clusters 

                   ***** Conclusion *****                            
 
* According to the majority rule, the best number of clusters is  2 
 
 
******************************************************************* 
$All.index
         KL     CH Hartigan     CCC    Scott Marriot TrCovW  TraceW Friedman
2    1.5181 3.7224   2.1032 32.6256 324.9157  0.9747 1.4415 17.3047 33335.18
3    5.4279 2.9364   3.1464 22.4906 343.6080  1.3744 1.4568 16.3971 35780.96
4    0.2772 3.0871   0.8930 18.4632 391.2754  0.7421 1.1909 15.1121 46905.93
5    0.1566 2.5239  18.9508 15.6838 423.5725  0.5171 1.2352 14.7463 54184.61
6    3.8269 6.7053   6.5691 15.4376 460.9003  0.2929 0.4149  9.5665 60903.80
7    7.6331 7.5340   0.9092 14.3723 483.3566  0.2274 0.2046  8.0174 64496.96
8  225.8179 6.5605   1.2788 12.8687 506.1540  0.1680 0.1695  7.8025 68744.80
9    0.0341 5.9381   1.0366 11.5896 536.2170  0.1003 0.1647  7.5026 83478.57
10   0.0098 5.3903  10.1286  4.5797 558.3935  0.0711 0.1737  7.2599 96939.81
       Rubin Cindex     DB Silhouette   Duda Pseudot2  Beale Ratkowsky   Ball
2   834.5163 0.3459 2.5220     0.1045 0.9501   1.4181 0.1949    0.1938 8.6523
3   880.7049 0.3624 1.8260     0.1258 0.9100   2.5720 0.3665    0.2100 5.4657
4   955.5969 0.3208 2.3910     0.1784 0.9258   0.8019 0.2805    0.2273 3.7780
5   979.3012 0.3598 2.8405     0.1860 0.3576  25.1513 6.4510    0.2133 2.9493
6  1509.5456 0.3857 2.4819     0.2320 0.2763  10.4760 8.0609    0.2874 1.5944
7  1801.2051 0.3842 1.9936     0.2481 0.8322   1.6135 0.6897    0.2861 1.1453
8  1850.8311 0.4301 2.1224     0.2539 0.8587   1.4812 0.5699    0.2708 0.9753
9  1924.7955 0.3919 2.1979     0.3121 0.8485   0.7142 0.5495    0.2587 0.8336
10 1989.1574 0.4277 2.4462     0.3119 0.2431  12.4512 9.5807    0.2484 0.7260
   Ptbiserial    Frey McClain   Dunn Hubert SDindex Dindex   SDbw
2      0.0645 -1.1321  0.6470 0.0583 0.0016 10.1948 0.5998 2.1051
3      0.1622 -0.0281  0.6783 0.0643 0.0052  8.1709 0.5755 0.5084
4      0.2826  0.0009  1.5954 0.0576 0.0061  9.8222 0.5365 0.6016
5      0.3163  0.1513  1.8601 0.0695 0.0067 11.3047 0.5332 0.6387
6      0.3386  0.0112  2.5696 0.0856 0.0029 11.2369 0.4227 0.6250
7      0.3508  0.4614  2.6563 0.0894 0.0032  9.5194 0.3854 0.3838
8      0.3333  0.0955  3.2627 0.1048 0.0034  9.9526 0.3753 0.3619
9      0.3445  0.1014  3.9025 0.1168 0.0033 10.1811 0.3667 0.3602
10     0.3453  0.0723  4.0990 0.1367 0.0032 10.6927 0.3637 0.4090

$All.CriticalValues
   CritValue_Duda CritValue_PseudoT2 Fvalue_Beale
2          0.5748            19.9700       0.9779
3          0.5692            19.6791       0.8993
4          0.3979            15.1322       0.9440
5          0.4643            16.1499       0.0000
6          0.1924            16.7852       0.0001
7          0.3506            14.8210       0.6589
8          0.3758            14.9464       0.7525
9          0.1924            16.7852       0.7654
10         0.1924            16.7852       0.0000

$Best.nc
                      KL    CH Hartigan     CCC   Scott Marriot TrCovW TraceW
Number_clusters   8.0000 7.000   5.0000  2.0000  4.0000  4.0000 6.0000 6.0000
Value_Index     225.8179 7.534  18.0578 32.6256 47.6674  0.4074 0.8203 3.6307
                Friedman     Rubin Cindex    DB Silhouette   Duda PseudoT2  Beale
Number_clusters     9.00    7.0000 4.0000 3.000     9.0000 2.0000   2.0000 2.0000
Value_Index     14733.77 -242.0335 0.3208 1.826     0.3121 0.9501   1.4181 0.1949
                Ratkowsky   Ball PtBiserial Frey McClain    Dunn Hubert SDindex
Number_clusters    6.0000 3.0000     7.0000    1   2.000 10.0000      0  3.0000
Value_Index        0.2874 3.1866     0.3508   NA   0.647  0.1367      0  8.1709
                Dindex   SDbw
Number_clusters      0 9.0000
Value_Index          0 0.3602

$Best.partition
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  2  1  1  1  2  2  2  1  1  1  1  1  1  2  1  2  2  1  1  2  2  2  1  2  1  1 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 1  1  1  1  1  1  1  1  1  1  1  1  1 

> 
> 
> ###  Método hierarquico aglomerativo, com o quadrado da distância Mahalanobis e o método da ligação média (average linkage)
> ##  k=2 clusters
> media<-hclust(d_maha,method="average")
> dev.new()
> plot(media, main="Dendrograma", ylab="Distâncias entre grupos")
> 
> 
> #  Distribuição das variáveis pelos clusters
> cutree(media,k=2)
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 1  1  1  1  2  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1  1 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 1  1  1  1  1  1  1  1  1  1  1  1  1 
> dev.new()
> plot(media, main="Dendrograma", ylab="Distâncias entre grupos")
> rect.hclust(media,k=2,border="red")
> 
> #  Representação gráfica da análise de clusters
> #  Caso seja necessário instalar o pacote
> #  install.packages("cluster", dependencies=TRUE)
> #  Carregar um pacote associado
> #  Este pacote permite representar, com o auxílio de ACP, a solução obtida pela análise de clusters em duas dimensões
> library(cluster)
> dev.new()
> clusplot(dados, cutree(media,k=2), main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> cophenetic(media)
            1          2          3          4          5          6          7
2  12.1347893                                                                  
3  15.8928173 15.8928173                                                       
4  12.1347893  8.6859375 15.8928173                                            
5  20.7795270 20.7795270 20.7795270 20.7795270                                 
6  12.1347893  2.7819614 15.8928173  8.6859375 20.7795270                      
7  19.2784121 19.2784121 19.2784121 19.2784121 20.7795270 19.2784121           
8  12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
9   2.8443941 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
10 12.1347893  4.6660646 15.8928173  8.6859375 20.7795270  4.6660646 19.2784121
11 12.1347893  4.6660646 15.8928173  8.6859375 20.7795270  4.6660646 19.2784121
12 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
13 12.1347893  4.6660646 15.8928173  8.6859375 20.7795270  4.6660646 19.2784121
14  2.8443941 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
15 12.1347893  2.7819614 15.8928173  8.6859375 20.7795270  1.5673610 19.2784121
16 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
17  9.9446742 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
18  9.9446742 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
19 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
20 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
21 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
22  9.9446742 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
23 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
24 13.8970953 13.8970953 15.8928173 13.8970953 20.7795270 13.8970953 19.2784121
25 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
26 13.8970953 13.8970953 15.8928173 13.8970953 20.7795270 13.8970953 19.2784121
27  9.9446742 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
28  9.9446742 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
29 13.8970953 13.8970953 15.8928173 13.8970953 20.7795270 13.8970953 19.2784121
30 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
31 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
32 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
33  9.9446742 12.1347893 15.8928173 12.1347893 20.7795270 12.1347893 19.2784121
34 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
35 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
36 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
37 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
38 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
39 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
40 12.1347893 11.1295794 15.8928173 11.1295794 20.7795270 11.1295794 19.2784121
            8          9         10         11         12         13         14
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9  12.1347893                                                                  
10 11.1295794 12.1347893                                                       
11 11.1295794 12.1347893  1.6666605                                            
12  7.7579777 12.1347893 11.1295794 11.1295794                                 
13 11.1295794 12.1347893  1.6666605  0.7383595 11.1295794                      
14 12.1347893  1.0774976 12.1347893 12.1347893 12.1347893 12.1347893           
15 11.1295794 12.1347893  4.6660646  4.6660646 11.1295794  4.6660646 12.1347893
16  7.7579777 12.1347893 11.1295794 11.1295794  5.1813371 11.1295794 12.1347893
17 12.1347893  9.9446742 12.1347893 12.1347893 12.1347893 12.1347893  9.9446742
18 12.1347893  9.9446742 12.1347893 12.1347893 12.1347893 12.1347893  9.9446742
19  7.7579777 12.1347893 11.1295794 11.1295794  5.1813371 11.1295794 12.1347893
20  7.7579777 12.1347893 11.1295794 11.1295794  2.6413164 11.1295794 12.1347893
21  2.6301500 12.1347893 11.1295794 11.1295794  7.7579777 11.1295794 12.1347893
22 12.1347893  9.9446742 12.1347893 12.1347893 12.1347893 12.1347893  9.9446742
23  2.6301500 12.1347893 11.1295794 11.1295794  7.7579777 11.1295794 12.1347893
24 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953
25  2.6301500 12.1347893 11.1295794 11.1295794  7.7579777 11.1295794 12.1347893
26 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953
27 12.1347893  9.9446742 12.1347893 12.1347893 12.1347893 12.1347893  9.9446742
28 12.1347893  9.9446742 12.1347893 12.1347893 12.1347893 12.1347893  9.9446742
29 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953
30 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
31 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
32 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
33 12.1347893  9.9446742 12.1347893 12.1347893 12.1347893 12.1347893  9.9446742
34 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
35 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
36 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
37 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
38 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
39 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
40 10.3084002 12.1347893 11.1295794 11.1295794 10.3084002 11.1295794 12.1347893
           15         16         17         18         19         20         21
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9                                                                              
10                                                                             
11                                                                             
12                                                                             
13                                                                             
14                                                                             
15                                                                             
16 11.1295794                                                                  
17 12.1347893 12.1347893                                                       
18 12.1347893 12.1347893  3.5271102                                            
19 11.1295794  0.9012417 12.1347893 12.1347893                                 
20 11.1295794  5.1813371 12.1347893 12.1347893  5.1813371                      
21 11.1295794  7.7579777 12.1347893 12.1347893  7.7579777  7.7579777           
22 12.1347893 12.1347893  2.0791296  3.5271102 12.1347893 12.1347893 12.1347893
23 11.1295794  7.7579777 12.1347893 12.1347893  7.7579777  7.7579777  0.5043365
24 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953
25 11.1295794  7.7579777 12.1347893 12.1347893  7.7579777  7.7579777  1.0813090
26 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953
27 12.1347893 12.1347893  7.7106877  7.7106877 12.1347893 12.1347893 12.1347893
28 12.1347893 12.1347893  7.7106877  7.7106877 12.1347893 12.1347893 12.1347893
29 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953 13.8970953
30 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
31 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
32 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
33 12.1347893 12.1347893  6.6090966  6.6090966 12.1347893 12.1347893 12.1347893
34 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
35 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
36 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
37 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
38 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
39 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
40 11.1295794 10.3084002 12.1347893 12.1347893 10.3084002 10.3084002 10.3084002
           22         23         24         25         26         27         28
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9                                                                              
10                                                                             
11                                                                             
12                                                                             
13                                                                             
14                                                                             
15                                                                             
16                                                                             
17                                                                             
18                                                                             
19                                                                             
20                                                                             
21                                                                             
22                                                                             
23 12.1347893                                                                  
24 13.8970953 13.8970953                                                       
25 12.1347893  1.0813090 13.8970953                                            
26 13.8970953 13.8970953  5.2448180 13.8970953                                 
27  7.7106877 12.1347893 13.8970953 12.1347893 13.8970953                      
28  7.7106877 12.1347893 13.8970953 12.1347893 13.8970953  2.7611020           
29 13.8970953 13.8970953  7.9661381 13.8970953  7.9661381 13.8970953 13.8970953
30 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
31 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
32 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
33  6.6090966 12.1347893 13.8970953 12.1347893 13.8970953  7.7106877  7.7106877
34 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
35 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
36 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
37 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
38 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
39 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
40 12.1347893 10.3084002 13.8970953 10.3084002 13.8970953 12.1347893 12.1347893
           29         30         31         32         33         34         35
2                                                                              
3                                                                              
4                                                                              
5                                                                              
6                                                                              
7                                                                              
8                                                                              
9                                                                              
10                                                                             
11                                                                             
12                                                                             
13                                                                             
14                                                                             
15                                                                             
16                                                                             
17                                                                             
18                                                                             
19                                                                             
20                                                                             
21                                                                             
22                                                                             
23                                                                             
24                                                                             
25                                                                             
26                                                                             
27                                                                             
28                                                                             
29                                                                             
30 13.8970953                                                                  
31 13.8970953  7.9067802                                                       
32 13.8970953  7.9067802  5.8569315                                            
33 13.8970953 12.1347893 12.1347893 12.1347893                                 
34 13.8970953  6.2745393  7.9067802  7.9067802 12.1347893                      
35 13.8970953  7.9067802  5.8569315  3.1616383 12.1347893  7.9067802           
36 13.8970953  6.2745393  7.9067802  7.9067802 12.1347893  2.4711373  7.9067802
37 13.8970953  7.9067802  5.8569315  2.5784162 12.1347893  7.9067802  3.1616383
38 13.8970953  7.9067802  5.8569315  2.5784162 12.1347893  7.9067802  3.1616383
39 13.8970953  6.2745393  7.9067802  7.9067802 12.1347893  4.2752348  7.9067802
40 13.8970953  6.2745393  7.9067802  7.9067802 12.1347893  5.5091113  7.9067802
           36         37         38         39
2                                             
3                                             
4                                             
5                                             
6                                             
7                                             
8                                             
9                                             
10                                            
11                                            
12                                            
13                                            
14                                            
15                                            
16                                            
17                                            
18                                            
19                                            
20                                            
21                                            
22                                            
23                                            
24                                            
25                                            
26                                            
27                                            
28                                            
29                                            
30                                            
31                                            
32                                            
33                                            
34                                            
35                                            
36                                            
37  7.9067802                                 
38  7.9067802  1.1472467                      
39  4.2752348  7.9067802  7.9067802           
40  5.5091113  7.9067802  7.9067802  5.5091113
> cor(c(d_maha), c(cophenetic(media)), method = "pearson")
[1] 0.6180521
> 
> 
> ###  Método não hierarquico de particionamento das k-médias
> #  Escolha do número óptimo de clusters para o método de particionamento das k-médias
> #  O ideal é que WSS, Within-cluster Sum of Squares, seja o menor possível, isto é, que a soma de quadrados dentro dos clusters seja mínima
> #  Representação gráfica da soma de quadrados dos desvios dentro dos grupos vs número de clusters
> #  Caso seja necessário instalar o pacote
> #  install.packages("factoextra", dependencies=TRUE)
> #  Carregar um pacote associado
> library(factoextra)
> dev.new()
> fviz_nbclust(dados,kmeans,method="wss")
> 
> ###  Método não hierarquico de particionamento das k-médias, para k=2 clusters
> #  nstart=n significa que o R considera n partições iniciais aleatórias diferentes e, em seguida, selecionará os melhores resultados correspondentes àquela com o menor wss 
> #  A soma de quadrados entre clusters deve ser máxima
> set.seed(123)
> k.means_2<-kmeans(dados,2,nstart=25)
> k.means_2
K-means clustering with 2 clusters of sizes 20, 20

Cluster means:
      X1     X2    X3     X4     X5     X6
1 7.5920 7.6175 7.417 7.5545 7.5165 7.4875
2 8.0745 8.0845 7.933 7.9420 7.8330 7.9670

Clustering vector:
 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 
 2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  2  1  1  1  1  1  1  1 
28 29 30 31 32 33 34 35 36 37 38 39 40 
 1  1  1  1  1  1  1  1  1  1  1  1  1 

Within cluster sum of squares by cluster:
[1] 3.90984 3.11597
 (between_SS / total_SS =  63.0 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss"
[6] "betweenss"    "size"         "iter"         "ifault"      
> 
> 
> ##  Representação gráfica da análise de clusters
> #  Caso seja necessário instalar o pacote
> #  install.packages("cluster", dependencies=TRUE)
> #  Carregar um pacote associado
> #  Este pacote permite representar, com o auxílio de ACP, a solução obtida pela análise de clusters em duas dimensões
> library(cluster)
> dev.new()
> clusplot(dados, k.means_2$cluster, main='Representação gráfica da análise de clusters',color=TRUE, shade=TRUE,labels=2, lines=0)
> 
> 
> ##  Representação gráfica dos clusters formados pelo método das k-médias
> dev.new()
> fviz_cluster(k.means_2, data=dados, palette = "jco", ellipse.type="euclid", star.plot=TRUE, repel=TRUE, ggtheme=theme_minimal() )
> 
> ##  Diagrama de perfil 
> #  Caso seja necessário instalar o pacote
> #  install.packages("profileR", dependencies=TRUE)
> #  Carregar um pacote associado
> library(profileR)
> dev.new()
> profileplot(k.means_2$centers,standardize=FALSE)
> 
> 
> ##  Coeficiente de silhouette
> #  Este coeficiente mede o quão bem uma observação está associada a um cluster e estima a distância média entre os clusters
> #  Caso seja necessário instalar o pacote
> #  install.packages("factoextra", dependencies=TRUE)
> #  Carregar um pacote associado
> library(factoextra)
> dev.new()
> fviz_silhouette(eclust(dados,"kmeans",k=2,nstart=25,graph=FALSE),palette="jco",ggtheme=theme_classic())
  cluster size ave.sil.width
1       1   20          0.47
2       2   20          0.54
> 