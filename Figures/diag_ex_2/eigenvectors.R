
for(j in 1:50){
  
  data<-generate_mvnorm_single_pop(sample_size=5000,center=c(0,0,9,9,9),covariance=diag(5:1))$centered
  v<-svd(data)$v
  for(i in 1:5){
   if(v[i,i]<0){
     v[,i]<-v[,i]*-1
   }
  }
  d<-v-diag(rep(1,5))
  diff<-sqrt(apply(d^2,2,sum))
  
  if(j==1){
    par(mar=c(5,5,5,3))
    par(pty='s')
    plot(diff,ylim=c(0,2),ylab='',main="Eigenvector Approximating Error\n(Distinct Eigenvalues)",xlab='Eigenvector',col='red')
    mtext("Error",line=3,side=2)
  }
  else{
    points(diff,col='red')
    }
  
  }


rc<-new("rasterAnalysis",data=object@data,reps=object@reps,cerrors=object@cerrors,perrors=object@perrors,terrors=-object@perrors/(tot*1000)-.001,chosen=object@chosen)
par(mar=c(5,8,5,2));plot(cbind(1:5,captured),pch=16,col='red',cex=2,ylim=c(0,1),xlim=c(0,5),ylab="",main="Average PCA effectiveness",xlab="Column Parameter (c)");abline(coef=c(0,1/5),col='blue',lwd=4,);mtext("Variance\n Captured",side=2,line=3,las=1)
