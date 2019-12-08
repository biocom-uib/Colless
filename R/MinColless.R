Min.Colless=function(x){
BD=floor(log2(x))+1
VV=as.integer(intToBits(x))[1:BD]
M=rev((0:(BD-1))[VV==1])
C=0
if (length(M)>1){
F=function(i){2^M[i]*(M[1]-M[i]-2*(i-2))}
C=sum(sapply(2:length(M),FUN=F))
}
C}
