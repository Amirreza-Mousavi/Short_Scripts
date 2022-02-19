library(matrixcalc)
library(ggplot2)
N=9 
#for N>9 system is computationally singular.
#Reciprocal condition number is almost zero.
#Errors in calculations arise.
res=matrix(data = NA,nrow = 2,ncol=N)
for(i in 3:(N+2)){
hm=hilbert.matrix(i)
cond_num=(norm(hm,"I")*norm(matrix.inverse(hm),"I"))
# "I" denotes to infinity norm
res[1,i-2]=i
res[2,i-2]=cond_num
}
print(res) 
#first row is n of the hilbert matrix.
#second row is the conditon number for 
#the nth hilbert matrix.
ggplot()+geom_point(aes(x=res[1,],y=(res[2,])))+
labs(x ="n ", y = "condition number")
ggplot()+geom_point(aes(x=res[1,],y=log10(res[2,])))+
labs(x ="n ", y = "log10(condition number)")
###################################