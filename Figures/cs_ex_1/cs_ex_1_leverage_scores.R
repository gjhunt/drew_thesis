chosen<-apply(obj@chosen,c(1,2),sum)/1000
name="~/Dropbox/Research/Thesis/27/Figures/cs_ex_1/levs.pdf"
pdf(file=name,width=10,height=15)
par("mfrow"=c(5,1))
par("mar"=c(5,12,5,8))

col=c("red","blue","green","orange","black")

dat=list('1'=generate_mvnorm_single_pop(sample_size=5000,center=rep(0,5),covariance=compound_symmetry_covariance(sigma=rep(1,5),rho=.7))$centered)
for(j in 2:10){
  dat[[paste(j)]]<-generate_mvnorm_single_pop(sample_size=5000,center=rep(0,5),compound_symmetry_covariance(sigma=rep(1,5),rho=.7))$centered
}


for(k in 1:5){
  
  levs<-matrix(rep(0,50),nrow=10)
  for(i in 1:10){
    levs[i,]<-leverage(CUR(dat[[i]],c=1,k=k))
    
  }
  
  plot(cbind(1:10,levs[,1])+runif(min=-1,max=1,10)/35,pch=8,xlab="",ylab=" ",xlim=c(1,10),ylim=c(0,1),
       main=paste("Leverage Scores, k =",k),
       col="red",cex=2.5,cex.axis=1.5,cex.main=1.5)
  
  for(m in 2:5){
   points(levs[,m]+runif(min=-1,max=1,10)/35,col=col[m],pch=8,cex=2.5) 
  }
  
  mtext("Leverage\nScores",side=2,line=4,las=1)
  mtext("Trial",side=1,line=4,las=1)
  

  abline(h=.2,lty=2)
  abline(h=.4,lty=2)
  abline(h=.6,lty=2)
  abline(h=.8,lty=2)
  abline(h=1,lty=2)
  
}




dev.off()