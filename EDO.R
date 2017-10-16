library(ggplot2)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_exp/Simulaciones")
#Leer datos

datos1 <- read.table("PvsDENS1.dat") #Tipo ASCII

ggplot(data = datos1, aes(x = V3, y = V1),size = 2) +
  geom_point(colour = "blue", size = 1.0)+
  xlab("Densidad") +  
  ylab("Presión") +
  labs(title="Discos duros")

dev.copy(png,'P(D).png')
dev.off()






