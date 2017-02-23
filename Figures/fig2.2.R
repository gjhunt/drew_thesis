plot.new()
par(pty="s")
par( mfrow = c( 1, 1 ) )

ctr    <- c(0, 0)                               # data centroid -> colMeans(dataMatrix)
a<-1/sqrt(2)
A<-matrix(c(a,a,a,-a),byrow=T,nrow=2)
A<-A%*%diag(c(1,5))%*%t(A)
B<-A
RR     <- chol(A)                               # Cholesky decomposition
angles <- seq(0, 2*pi, length.out=200)          # angles for ellipse


data<-mvrnorm(mu=ctr,Sigma=B,n=5000)
plot(x=data[,1],y=data[,2], main="Bivariate Level Curves",xlab="",ylab="",asp=1,xlim=c(-5,5),ylim=c(-5,5))            # plot ellipse

abline(coef=c(0,1),lwd=4,col='red')
abline(coef=c(0,-1),lwd=4,col='red')

ell    <- 2* cbind(cos(angles), sin(angles)) %*% RR  # ellipse scaled with factor 2
ellCtr <- sweep(ell, 2, ctr, "+")               # center ellipse to the data centroid
points(ellCtr, col="orange", type="l",lwd=4)

ell    <- 3* cbind(cos(angles), sin(angles)) %*% RR  # ellipse scaled with factor 3
ellCtr <- sweep(ell, 2, ctr, "+")               # center ellipse to the data centroid
points(ellCtr, col="orange", type="l",lwd=4)

ell    <- 1* cbind(cos(angles), sin(angles)) %*% RR  # ellipse scaled with factor .5
ellCtr <- sweep(ell, 2, ctr, "+")               # center ellipse to the data centroid
points(ellCtr, col="orange", type="l",lwd=4)

ell    <- 0.1* cbind(cos(angles), sin(angles)) %*% RR  # ellipse scaled with factor .5
ellCtr <- sweep(ell, 2, ctr, "+")               # center ellipse to the data centroid
points(ellCtr, col="orange", type="l",lwd=4)

ell    <- 4* cbind(cos(angles), sin(angles)) %*% RR  # ellipse scaled with factor .5
ellCtr <- sweep(ell, 2, ctr, "+")               # center ellipse to the data centroid
points(ellCtr, col="orange", type="l",lwd=4)




grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")



#points(ctr[1], ctr[2], pch=4, lwd=2)            # plot data centroid

#library(car)  # verify with car's ellipse() function
#ellipse(c(0, 0), shape=A, radius=0.98, col="red", lty=2)