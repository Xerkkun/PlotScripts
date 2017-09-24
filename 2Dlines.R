library(ggplot2)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_experimental_II/Primer_portafolio/Condiciones_iniciales/Actividad_1")
#Leer datos

datos <- read.table("pi.dat") #Tipo ASCII


ggplot(data = datos, aes(x = V1, y = V2)) +  
  geom_line() +       
  xlab("N") +  
  ylab("Error%") + ggtitle(" Error% vs N")

dev.copy(png,'evsN.png')
dev.off()

ggplot(data = datos, aes(x = V1, y = V3)) +  
  geom_line() +       
  xlab("N") +  
  ylab("Pi") + ggtitle(" Pi vs N")

dev.copy(png,'PIvsN.png')
dev.off()




