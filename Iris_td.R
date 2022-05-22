getwd()
setwd("/home/mopedro/epita/proba_td/given")
iris<-read.table("iris.data.txt", sep=",", header=TRUE)
head(iris)
colnames(iris)

corr = cor(iris[, 1:4])
round(corr, 2)

pairs(dtemp)

require("corrplot")
library(corrplot)
corrplot(corr)

setosa = iris[iris$class == "Iris-setosa",]
corr_setosa = cor(setosa[,1:4])
round(corr_setosa,2)
corrplot(corr_setosa)


versicolor = iris[iris$class == "Iris-versicolor",]
corr_versicolor = cor(versicolor[,1:4])
round(corr_versicolor,2)
corrplot(corr_versicolor)

virginica = iris[iris$class == "Iris-virginica",]
corr_virginica = cor(virginica[,1:4])
round(corr_virginica,2)
corrplot(corr_virginica)


mean(iris$sepal.length)
mean(iris$sepal.width)

mean(iris$sepal.length[iris$class == "Iris-setosa"])
mean(iris$sepal.width[iris$class == "Iris-setosa"])

boxplot(sepal.length~class, data=iris, main="Sepal Length")
boxplot(sepal.width~class, data=iris, main="Sepal Width")

boxplot(petal.length~class, data=iris, main="Petal Length")
boxplot(petal.length.1~class, data=iris, main="Petal Width")
