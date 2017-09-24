library(ggplot2)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_experimental_II/Primer_portafolio")
#Leer datos
datos1 <- read.table("act4_1.dat") #Tipo ASCII
datos2 <- read.table("act4_2.dat") #Tipo ASCII
datos3 <- read.table("act4_3.dat") #Tipo ASCII
datos4 <- read.table("act4_4.dat") #Tipo ASCII

ggplot(data = datos1, aes(x = V1, y = V2),size = 2) +
  geom_point(shape = 21,colour = "black", fill = "violet", size = 3)+
  xlab("x") +  
  ylab("y") +
  labs(title="N = 125, BOXL = 10")

dev.copy(png,'act4_1.png')
dev.off()

ggplot(data = datos2, aes(x = V1, y = V2),size = 2) +
  geom_point(shape = 21,colour = "black", fill = "yellow", size = 3) +
  xlab("x") +  
  ylab("y") +
  labs(title="N = 512, BOXL = 10")

dev.copy(png,'act4_2.png')
dev.off()

ggplot(data = datos3, aes(x = V1, y = V2)) +
  geom_point(shape = 21,colour = "black", fill = "grey", size = 3) +
  xlab("x") +  
  ylab("y") +
  labs(title="N = 1000, BOXL = 10")

dev.copy(png,'act4_3.png')
dev.off()

ggplot(data = datos4, aes(x = V1, y = V2),size = 2) +  
  geom_point(shape = 21,colour = "black", fill = "red", size = 3) +
  xlab("x") +  
  ylab("y") +
  labs(title="N = 3375, BOXL = 10")


dev.copy(png,'act4_4.png')
dev.off()


#Guardar animación GIF

#movie3d( spin3d( axis = c(0,0, 1), rpm = 7), 
#         duration = 10, dir = getwd(),
#        type = "gif" )

