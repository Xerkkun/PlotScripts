library(ggplot2)

#Directorio de trabajo
setwd("/home/fer/Desktop/Desarrollo_experimental_II/Primer_portafolio/Preparando_lab")
#Leer datos
datos1 <- read.table("1.dat") #Tipo ASCII
datos2 <- read.table("2.dat") #Tipo ASCII
datos3 <- read.table("3.dat") #Tipo ASCII
datos4 <- read.table("4.dat") #Tipo ASCII
datos5 <- read.table("5.dat") #Tipo ASCII
datos6 <- read.table("6.dat") #Tipo ASCII
datos7 <- read.table("7.dat") #Tipo ASCII
datos8 <- read.table("8.dat") #Tipo ASCII

#ggplot(data = datos1, aes(x = V1, y = V2)) +
#  geom_line(colour = "magenta") + 
#  xlab("x") +  
#  ylab("y") +
#  labs(title=" a + bx")

ggplot(data = datos1, aes(x = V1, y = V2),size = 2) +
  geom_point(shape = 21,colour = "black", fill = "violet", size = 3)+
  xlab("x") +  
  ylab("y")


ggplot(data = datos2, aes(x = V1, y = V2)) +
  geom_point(shape = 21,colour = "black", fill = "grey", size = 3) +
  xlab("x") +  
  ylab("y") + add = TRUE

dev.copy(png,'2.png')
dev.off()

ggplot(data = datos3, aes(x = V1, y = V2)) +
  geom_point(shape = 21,colour = "black", fill = "grey", size = 3) +
  xlab("x") +  
  ylab("y") +
  labs(title="x^(1/2)")

dev.copy(png,'3.png')
dev.off()

ggplot(data = datos4, aes(x = V1, y = V2)) +
  geom_point(shape = 21,colour = "black", fill = "grey", size = 3) +
  xlab("x") +  
  ylab("y") +
  labs(title="x^(1/3)")





