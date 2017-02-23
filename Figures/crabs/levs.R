name="~/Dropbox/Research/Thesis/29/Figures/crabs/levs.pdf"
pdf(file=name,width=10,height=15)
par("mfrow"=c(5,1))
par("mar"=c(5,10,5,5))

k=1;plot(leverage(CUR(cdata@data,c=1,k=k)),col='red',pch=16,cex=2.5,las=1,ylab='',xlab='Column Number',cex.axis=1.5,cex.main=1.5,ylim=c(0,1),main=paste("Leverage Scores, k = ",k));mtext('Leverage\nScore',side=2,line=3,las=1)
k=2;plot(leverage(CUR(cdata@data,c=1,k=k)),col='red',pch=16,cex=2.5,las=1,cex.axis=1.5,cex.main=1.5,ylab='',xlab='Column Number',ylim=c(0,1),main=paste("Leverage Scores, k = ",k));mtext('Leverage\nScore',side=2,line=3,las=1)
k=3;plot(leverage(CUR(cdata@data,c=1,k=k)),col='red',pch=16,cex=2.5,las=1,cex.axis=1.5,cex.main=1.5,ylab='',xlab='Column Number',ylim=c(0,1),main=paste("Leverage Scores, k = ",k));mtext('Leverage\nScore',side=2,line=3,las=1)
k=4;plot(leverage(CUR(cdata@data,c=1,k=k)),col='red',pch=16,cex=2.5,las=1,cex.axis=1.5,cex.main=1.5,ylab='',xlab='Column Number',ylim=c(0,1),main=paste("Leverage Scores, k = ",k));mtext('Leverage\nScore',side=2,line=3,las=1)
k=5;plot(leverage(CUR(cdata@data,c=1,k=k)),col='red',pch=16,cex=2.5,las=1,cex.axis=1.5,cex.main=1.5,ylab='',xlab='Column Number',ylim=c(0,1),main=paste("Leverage Scores, k = ",k));mtext('Leverage\nScore',side=2,line=3,las=1)

dev.off()