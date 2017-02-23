plot.new()
par(pty="s")
par( mfrow = c( 1, 1 ) )

A<-matrix(c(1,.8,.8,1),byrow=T,nrow=2)
#A<-matrix(c(4,8,11,7,14,-2),byrow=T,nrow=3)
#A<-t(A)%*%A

eigVal  <- 1/eigen(A)$values
eigVec  <- eigen(A)$vectors
eigScl  <- eigVec %*% diag(sqrt(eigVal))  # scale eigenvectors to length = square-root
xMat    <- rbind(ctr[1] + eigScl[1, ], ctr[1] - eigScl[1, ])
yMat    <- rbind(ctr[2] + eigScl[2, ], ctr[2] - eigScl[2, ])
ellBase <- cbind(sqrt(eigVal[1])*cos(angles), sqrt(eigVal[2])*sin(angles)) # normal ellipse
ellRot  <- eigVec %*% t(ellBase)                                          # rotated ellipse
plot((ellRot+ctr)[1, ], (ellRot+ctr)[2, ], col="midnightblue",main="R(x)=1",xlab="",ylab="",asp=1,xlim=c(-1.5,1.5),ylim=c(-1.5,1.5) ,type="l", lwd=4)
matlines(xMat, yMat, lty=1, lwd=2, col="red")

grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")
