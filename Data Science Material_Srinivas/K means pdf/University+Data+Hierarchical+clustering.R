#Data Preparation
Universities<-read.csv("C:\\1.Srinivas\\Material\\Excelr\\1.Course Material\\
                       Week 3\\Clustering\\University Data Hierarchical clustering
                       \\Universities.csv")
mydata <- scale(Universities[,2:6])
d <- dist(mydata, method = "euclidean")
fit <- hclust(d, method="average") # try with ave,ward.D2,com,cen

plot(fit) # display dendogram
groups <- cutree(fit, k=5) # cut tree into 5 clusters
# draw dendogram with red borders around the 5 clusters 
rect.hclust(fit, k=5, border="red")
clusters=data.frame('Uni'=Universities[,1], 'Cluster' =groups)
require(dplyr)
c1 = clusters%>%filter(Cluster==1)
c1
