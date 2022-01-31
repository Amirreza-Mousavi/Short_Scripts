setwd("C:/Users/Amirreza/Desktop/msa_scripts/")
options(max.print=3000)

library(msa)

myseq=readAAStringSet("HSP70_sequence.fasta")
res=msa(myseq,method = "Muscle")


## **************************
## Partial printing begins now
## **************************
print(res)


## **************************
## Complete printing begins now (type1)
## **************************
print(res,show="complete")


## **************************
## Complete printing begins now (type2)
## **************************
paste(res)


## **************************
## Pretty Printing begins now
## **************************
msaPrettyPrint(res, output="pdf", showNames="none",
               showLogo="top", askForOverwrite=FALSE, verbose=TRUE)





