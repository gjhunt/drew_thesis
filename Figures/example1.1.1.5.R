plot.new()
par(pty="s")
plot(0,0,col="white",main="Unit Eigenvectors of A",xlab="",ylab="",asp=1,xlim=c(-1,1),ylim=c(-1,1))
grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")

A<-matrix(c(5,-5,0,4),byrow=T,ncol=2)
V<-eigen(A)$vectors

arrows(0,0,V[1,1],V[2,1],col="midnightblue",lwd=7,angle=20)
arrows(0,0,V[1,2],V[2,2],col="darkred",lwd=7,angle=20)

