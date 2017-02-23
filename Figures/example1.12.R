plot.new()
par(pty="s")
par( mfrow = c( 1, 1 ) )

ctr    <- c(0, 0)                               # data centroid -> colMeans(dataMatrix)
A      <- matrix(c(1/4, 0,0, 1), nrow=2) # covariance matrix -> cov(dataMatrix)
RR     <- chol(A)                               # Cholesky decomposition
angles <- seq(0, 2*pi, length.out=200)          # angles for ellipse
ell    <- 1 * cbind(cos(angles), sin(angles)) %*% ginv(RR)  # ellipse scaled with factor 1
ellCtr <- sweep(ell, 2, ctr, "+")               # center ellipse to the data centroid
plot(ellCtr, col="midnightblue",main="R(x)=1",xlab="",ylab="",asp=1,xlim=c(-2,2),ylim=c(-2,2) ,type="l", lwd=4)            # plot ellipse

grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")

#points(ctr[1], ctr[2], pch=4, lwd=2)            # plot data centroid

#library(car)  # verify with car's ellipse() function
#ellipse(c(0, 0), shape=A, radius=0.98, col="red", lty=2)