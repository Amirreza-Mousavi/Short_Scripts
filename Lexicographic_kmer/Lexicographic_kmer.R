
##################
#converting to different bases using cwhmisc library
#finding combinations using combinat
#int2B(5,2) .. 5 in base 2 --> a list of result,the first index, + the base, in second index
#################
#Enumerating k-mers Lexicographically 
library(cwhmisc)
NofLetters=8
wordlength=3
dd=data.frame(c("A","B","C","D","E","F","G","H"),c("0","1","2","3","4","5","6","7"))
colnames(dd)=c("value","key")
items=unlist(int2B(0:(NofLetters^wordlength-1),NofLetters)[1])
items=gsub(" ","0",items)
for(i in 1:length(items)){
  st=items[i]
  conversion=""
  for(j in 1:nchar(st)){
    char=substr(st,j,j)
    char=dd$value[ which(dd$key==char) ]
    conversion=paste0(conversion,char)
  }
  cat(conversion,"\n")
}
#print(items)
