library(calibrate)

plot.new()
par(pty="s")
par( mfrow = c( 1, 2 ) )

plot(0,0,col="white",main="Before T",xlab="",ylab="",asp=1,xlim=c(-5,5),ylim=c(-5,5))
grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")

arrows(0,0,sqrt(2),sqrt(2),col="skyblue3",lwd=7,angle=20)
#arrows(0,0,3*sqrt(2),3*sqrt(2),col="darkred",lwd=7,angle=20)
textxy(sqrt(2),sqrt(2)-1,'v',cx=1)

plot(0,0,col="white",main="After T",xlab="",ylab="",asp=1,xlim=c(-5,5),ylim=c(-5,5))
grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")

arrows(0,0,3*sqrt(2),2*sqrt(2),col="midnightblue",lwd=7,angle=20)
textxy(sqrt(2),sqrt(2)-1,'v',cx=1)
arrows(0,0,sqrt(2),sqrt(2),col="skyblue3",lwd=7,angle=20)
textxy(3*sqrt(2)-.625,3*sqrt(2)-1.5,'T(v)',cx=1)