number2binary = function(n){as.numeric(intToBits(n))} #Binary decomposition of n
maxpot2=function(n){min(which(number2binary(n)==1))-1} #Maximum power of 2 dividing n
##
QB=function(n){
  Descomposicio=data.frame(n1=c(),n2=c())
  if (n%%2==0){Descomposicio=rbind(Descomposicio,data.frame(n1=n/2,n2=n/2,n=n))} #The decomposition (n/2,n/2)
  k=maxpot2(n)  #our k
  n0=n/2^k   #our n_0
  L=number2binary(n0)
  YY=which(L==1)-1  
  #YY contains the exponents de of powers of 2 with non 0 coefficient in the binary expansion of n0=Aux(n)
  #Warning! The exponents appear in YY in decreasing order
  #The next if-loop adds the decompositions (n1,n2) based on writing n0 as 2^(l+1)*p+2^l+2t+1
  if (length(YY)>2){    
    for (i in 2:(length(YY)-1)){
      if (YY[i-1]<YY[i]-1 | i==2  ){
        l=YY[i] 
        p=(sum(2^YY[(i+1):length(YY)]))/2^(l+1)
        Descomposicio=rbind(Descomposicio,data.frame(n1=2^(k+l)*(p+1),n2=n-2^(k+l)*(p+1),n=n))
      }
    }
  }
  #The next if-loop adds the decompositions (n1,n2) based on writing n0 as 2^(l+1)*p+2^l-2t-1
  if (length(YY)>2){
    for (i in 2:(length(YY)-1)){
      if (YY[i+1]>YY[i]+1){
        l=YY[i]+1
        p=(sum(2^YY[(i+1):length(YY)]))/2^(l+1)
        Descomposicio=rbind(Descomposicio,data.frame(n1=n-2^(k+l)*p,n2=2^(k+l)*p,n=n))
      }
    }   
  }
  Descomposicio=rbind(Descomposicio,data.frame(n1=2^k*ceiling(n0/2),n2=2^k*floor(n0/2),n=n))
  Descomposicio[unique(order(Descomposicio$n1)),]
}

