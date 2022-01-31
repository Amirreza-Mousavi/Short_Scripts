library(e1071)
library(ggplot2)
library(purrr)
library(tidyverse)

#
data("iris")
svm_model <- svm(Species ~ Sepal.Length+Petal.Length, data=iris)
plot(svm_model, iris, Sepal.Length~Petal.Length)

#
data("mtcars")
mod=svm(as.factor(cyl)~wt+disp,data=mtcars)
plot(mod,mtcars,wt~disp)

#
library(ggplot2)
data("DNase")
d=DNase
ggplot(d)+geom_point(aes(conc,density,color=Run))

#
data("Orange")
org=Orange
org.svm=svm(as.factor(Tree)~.,org)
plot(org.svm,org,age~circumference)

#
library(lattice) ##for the dataset
data("environmental")
en=environmental
en.lm=lm(ozone~.,en)
plot(predict(en.lm,en),en$ozone)

#
data("starwars")
stw=starwars
stw=na.omit(stw)
stw
stw_svm=svm(as.factor(sex)~height+mass,stw)
plot(stw_svm,stw,height~mass)

#
data("starwars")
stw=starwars
stw=na.omit(stw)
stw
stw_svm=svm(as.factor(homeworld)~mass+height+birth_year,stw)
plot(stw_svm,stw,height~mass)
