chosen<-apply(obj@chosen,c(1,2),sum)/1000
name="~/Dropbox/Research/Thesis/29/Figures/crabs/chosen.pdf"
pdf(file=name,width=10,height=15)
par("mfrow"=c(5,1))
par("mar"=c(5,12,5,8))

for(k in 1:5){
plot(cbind(0:5,chosen[k,]),xlab="",ylab=" ",xlim=c(0,5),ylim=c(0,5),
     main=paste("Average Number of Columns Chosen, k =",k),
     col="red",pch=16,cex=2.5,cex.axis=1.5,cex.main=1.5)
mtext("Average\nNumber\nChosen",side=2,line=4,las=1)
abline(coef=c(0,1),col="blue",lwd=2)
mtext("Column Parameter (c)",side=1,line=4,las=1)

abline(h=1,lty=2)
abline(h=2,lty=2)
abline(h=3,lty=2)
abline(h=4,lty=2)
abline(h=5,lty=2)
}

abline(h=6,lty=2)

dev.off()