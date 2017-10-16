library(ggplot2)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_exp/Simulaciones")
#Leer datos

datos1 <- read.table("gr 0.050.dat") #Tipo ASCII
datos2 <- read.table("gr 0.200.dat") #Tipo ASCII
datos3 <- read.table("gr 0.500.dat") #Tipo ASCII
datos4 <- read.table("gr 0.700.dat") #Tipo ASCII
datos5 <- read.table("gr 0.900.dat") #Tipo ASCII

ggplot() +  
  geom_line(data = datos1, aes(x = V1, y = V2), colour = "red") +
  geom_line(data = datos2, aes(x = V1, y = V2), colour = "magenta") +
  geom_line(data = datos3, aes(x = V1, y = V2), colour = "blue") +
  geom_line(data = datos4, aes(x = V1, y = V2), colour = "green") +
  geom_line(data = datos5, aes(x = V1, y = V2), colour = "orange") +
  xlab("radio") +  
  ylab("g(r)") + ggtitle("Función de distribución radial")+
  xlim(0,12)

dev.copy(png,'Grs.png')
dev.off()


a




