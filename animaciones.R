h <- 1
rho <- 0
omega <- 1

x <- seq(-1.5*pi+0.5, 2*pi+0.5, length=250)
y <- h*cos(omega*(x-rho))
plot(x, y, type="l", ylim=c(-1.5,1.5))
abline(h=0, v=0, col="grey75")
hnew <- c(seq(1, 1.5, by=0.01),
          seq(1.48, 0.5, by=-0.01),
          seq(0.52, 1, by=0.01))
imagesDir <- "/home/fer/Desktop/Desarrollo_experimental_II/Alan programa/video2"

png(file.path(imagesDir, "Rplot%03d.png"))
for (i in 1:length(hnew)){
  plot(x, y, type="l", ylim=c(-1.5,1.5),
       main=expression(f(t)==h*cos(omega*t-omega*rho)), lwd=2)
  abline(h=0, v=0, col="grey75")
  h <- hnew[i]
  lines(x, h*cos(omega*(x-rho)), col=2)
  lines(c(0,0),c(0,h), col=2, lwd=2)
  lines(c(-0.05,0.05),c(h,h), col=2, lwd=2)
  lines(c(-0.05,0.05),c(0,0), col=2, lwd=2)
  lines(c(0,1.8), c(h/2,0.85), col=2, lwd=2)
  text(1.9,0.87, paste("h=", round(h,2), sep=""), adj=0, col=2)
  text(1.9,1.1, "Changing the amplitude:", font=2, adj=0, col=2)
}
dev.off()