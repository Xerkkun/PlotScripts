library(rgl)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_experimental_II/Programas")
#Leer datos
datos1 <- read.table("t1.dat") #Tipo ASCII
#datos2 <- read.table("ac4_traza1_2.dat") #Tipo ASCII
#datos3 <- read.table("act4_traza2_2.dat") #Tipo ASCII
#atos4 <- read.table("act4_final3.dat") #Tipo ASCII


x1 <- datos1$V1
y1 <- datos1$V2
z1 <- datos1$V3

#x2 <- datos2$V1
#y2 <- datos2$V2
#z2 <- datos2$V3

#x3 <- datos3$V1
#y3 <- datos3$V2
#z3 <- datos3$V3

#x4 <- datos4$V1
#y4 <- datos4$V2
#z4 <- datos4$V3

#rgl.open() # Open a new RGL device
open3d()
par3d(windowRect = c(100, 100, 612, 612))
#Crear gráfica

#plot3d(x1, y1, z1, xlab = "x", ylab = "y", zlab = "z", col="blue", box = TRUE,
#       type ="s", radius = 0.5, main = "INICIAL N = 1000, DENS = 0.5" )

#snapshot3d(filename = 'act4_inicial2.png', fmt = 'png')
#xlim = c(-11,11) , ylim = c(-11,11) , zlim = c(-11,11) 
plot3d(x1, y1, z1, xlab = "x", ylab = "y", zlab = "z", 
       col="blue", box = TRUE, type ="l", main = "TRAZA 1, NSTEP = 1,000,000" )

#Guardar animación GIF


snapshot3d(filename = 'traza1.png', fmt = 'png')

#plot3d(x3, y3, z3, add = TRUE,
#       col="red", box = TRUE, type ="l", main = "TRAZA 2, NSTEP = 100,000" )

#movie3d( spin3d( axis = c(0,0, 1), rpm = 7), 
#         duration = 10, dir = getwd(),
#         type = "gif" )

#snapshot3d(filename = 'act4_compare_3.png', fmt = 'png')


#plot3d(x4, y4, z4, xlab = "x", ylab = "y", zlab = "z", col="green", box = TRUE,
#       type ="s", radius = 0.5, main = "FINAL N = 1000, NSTEP = 100,000" )

#snapshot3d(filename = 'act4_final3.png', fmt = 'png')

