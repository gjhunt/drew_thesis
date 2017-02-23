plot.new()
par(pty="s")
par(mfrow = c(1,1))

plot(c(4,0,1),c(0,2,1), col="midnightblue",main="",xlab="",ylab="",asp=1,xlim=c(0,5),ylim=c(0,5) , pch=4,lwd=4)

grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")

X<-matrix(c(1,4,1,0,1,1),byrow=T,nrow=3)
b<-ginv(X)%*%c(0,2,1)

abline(coef=b,col="Red",lwd=2)