library(rgl)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_experimental_II/Primer_portafolio")
#Leer datos
datos1 <- read.table("act2_a1.dat") #Tipo ASCII
datos2 <- read.table("act2_a2.dat") #Tipo ASCII
datos3 <- read.table("act2_a3.dat") #Tipo ASCII
datos4 <- read.table("act2_b1.dat") #Tipo ASCII
datos5 <- read.table("act2_b2.dat") #Tipo ASCII
datos6 <- read.table("act2_b3.dat") #Tipo ASCII

x1 <- datos1$V1
y1 <- datos1$V2
z1 <- datos1$V3

x2 <- datos2$V1
y2 <- datos2$V2
z2 <- datos2$V3

x3 <- datos3$V1
y3 <- datos3$V2
z3 <- datos3$V3

x4 <- datos4$V1
y4 <- datos4$V2
z4 <- datos4$V3

x5 <- datos5$V1
y5 <- datos5$V2
z5 <- datos5$V3

x6 <- datos6$V1
y6 <- datos6$V2
z6 <- datos6$V3

#rgl.open() # Open a new RGL device
open3d()
par3d(windowRect = c(100, 100, 612, 612))
#Crear gráfica

plot3d(x1, y1, z1, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
       type ="s", radius = 0.5, main = "N=125,DENS=0.4", sub ="BOXL=6.78" )

snapshot3d(filename = 'act2_a1.png', fmt = 'png')

plot3d(x2, y2, z2, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
       type ="s", radius = 0.5, main = "N=512,DENS=0.4", sub ="BOXL=10.85")

snapshot3d(filename = 'act2_a2.png', fmt = 'png')

plot3d(x3, y3, z3, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
       type ="s", radius = 0.5, main = "N=1000,DENS=0.4", sub ="BOXL=13.57")

snapshot3d(filename = 'act2_a3.png', fmt = 'png')

plot3d(x4, y4, z4, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
       type ="s", radius = 0.5, main = "N=512,DENS=0.2", sub ="BOXL=13.68")

snapshot3d(filename = 'act2_b1.png', fmt = 'png')

plot3d(x5, y5, z5, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
       type ="s", radius = 0.5, main = "N=512,DENS=0.6", sub ="BOXL=9.48")

snapshot3d(filename = 'act2_b2.png', fmt = 'png')

plot3d(x6, y6, z6, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
       type ="s", radius = 0.5, main = "N=512,DENS=0.8", sub ="BOXL=8.61")

snapshot3d(filename = 'act2_b3.png', fmt = 'png')

#Guardar animación GIF

#movie3d( spin3d( axis = c(0,0, 1), rpm = 7), 
#         duration = 10, dir = getwd(),
#        type = "gif" )

