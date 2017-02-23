library(calibrate)

plot.new()
par(pty="s")
par( mfrow = c( 1, 1 ) )

plot(0,0,col="white",main="Orthogonal Rotation",xlab="",ylab="",asp=1,xlim=c(-1,1),ylim=c(-1,1))
grid(col="black")
abline(h=0,col="black")
abline(v=0,col="black")

theta1=(60-15)*pi/180
theta2=(345-15)*pi/180

arrows(0,0,cos(theta1),sin(theta1),col="skyblue3",lwd=7,angle=20)
arrows(0,0,cos(theta2),sin(theta2),col="skyblue3",lwd=7,angle=20)
textxy(cos(theta1),sin(theta1),'v',cx=1)
textxy(cos(theta2),sin(theta2),'w',cx=1)

theta1=60*pi/180
theta2=345*pi/180

arrows(0,0,cos(theta1),sin(theta1),col="midnightblue",lwd=7,angle=20)
arrows(0,0,cos(theta2),sin(theta2),col="midnightblue",lwd=7,angle=20)
textxy(cos(theta1),sin(theta1),'Rv',cx=1)
textxy(cos(theta2)-.125,sin(theta2)+.25,'Rw',cx=1)


