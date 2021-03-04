library(ggplot2)


#primera distancia:

ggplot(data=dist.CAN, aes(x=V1, y=V2)) +
  geom_line(color = "green", size=0.7)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Distancia entre C \u03b1 y Nitrogeno de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Distancia (nm)")

##################  400 k #####################
ggplot(data=distCAN.ala.400, aes(x=V1, y=V2)) +
  geom_line(color = "red", size=0.7)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Distancia entre C \u03b1 y Nitrogeno de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Distancia (nm)")

#########juntas ############
canala <- merge(dist.CAN,distCAN.ala.400, by="V1")

ggplot(data=canala) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Distancia entre C \u03b1 y Nitrogeno de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Distancia (nm)")

#segunda distancia
ggplot(data=distanciaCACB, aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Distancia entre C \u03b1 y C \u03b2 de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Distancia (nm)")

##################  400 k #####################

ggplot(data=dist.400, aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Distancia entre C \u03b1 y C \u03b2 de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Distancia (nm)")

#########juntas ############
cacbala <- merge(distanciaCACB,dist.400, by="V1")

ggplot(data=cacbala) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Distancia entre C \u03b1 y C \u03b2 de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Distancia (nm)")
#Angulos

#angulo CA-C-O alanina 
ggplot(data=angaverCA.C.O, aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo entre C \u03b1 y C carbonilo y oxigeno de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Angulo (º)")

##################  400 k #####################
ggplot(data=angaver.400, aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo entre C \u03b1 y C carbonilo y oxigeno de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Angulo (º)")

#########juntas ############
cacoang <- merge(angaverCA.C.O,angaver.400, by="V1")

ggplot(data=cacoang) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variación del angulo entre C \u03b1 y C carbonilo y oxigeno de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Angulo (º)")

#angulo N-CA-CB thr
ggplot(data=angaver, aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo entre Nitrogeno, carbono \u03b1 y carbono \u03b2 de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Angulo (º)")


##################  400 k #####################
ggplot(data=angaver1.400, aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo entre Nitrogeno, carbono \u03b1 y carbono \u03b2 de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Angulo (º)")

#########juntas ############
ncacbang <- merge(angaver,angaver1.400, by="V1")

ggplot(data=ncacbang) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variación del angulo entre Nitrogeno, carbono \u03b1 y carbono \u03b2 de alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Angulo (º)")

#DIHEDROS

#alanina
ggplot(data= psi.ala.2 , aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle('Variación del angulo \u03a8 alanina') +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03a8 (º)")

ggplot(data= phi.ala.2 , aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03d5 alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03d5 (º)")

##################  400 k #####################
ggplot(data= psi.ala.2.400 , aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03a8 alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03a8 (º)")

ggplot(data= phi.ala.2.400 , aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03d5 alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03d5 (º)")

#########juntas psi ############
psial <- merge(psi.ala.2,psi.ala.2.400, by="V1")

ggplot(data=psial) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variación del angulo \u03a8 alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo (º)")

#########juntas phi ############
phial <- merge(phi.ala.2,phi.ala.2.400, by="V1")

ggplot(data=phial) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variación del angulo \u03d5 alanina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo (º)")

#arginina
ggplot(data= psi.Arg.3 , aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03a8 arginina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03a8 (º)")

ggplot(data= phi.Arg.3, aes(x=V1, y=V2)) +
  geom_line(color = "green",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03d5 arginina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03d5 (º)")

##################  400 k #####################
ggplot(data= psi.Arg.3.400 , aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03a8 arginina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03a8 (º)")

ggplot(data= phi.Arg.3.400, aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8, linetype=1)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variación del angulo \u03d5 arginina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo \u03d5 (º)")

#########juntas psi ############
psiar <- merge(psi.Arg.3,psi.Arg.3.400, by="V1")

ggplot(data=psiar) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variación del angulo \u03a8 arginina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo (º)")

#########juntas phi ############
phiar <- merge(phi.Arg.3,phi.Arg.3.400, by="V1")

ggplot(data=phial) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variación del angulo \u03d5 arginina") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (fs)")+
  ylab("Angulo (º)")

# TEMPERATURA

ggplot(data=temp, aes(x=V1, y=V2)) +
  geom_line(color = "green", size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variacion de la temperatura del sistema") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")

##################  400 k #####################
ggplot(data=temp.400, aes(x=V1, y=V2)) +
  geom_line(color = "red",size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variacion de la temperatura del sistema") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")

#########juntas ############
tempe <- merge(temp,temp.400, by="V1")

ggplot(data=tempe) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variacion de temperatura del sistema") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Temperatura (K)")

#ENERGIA

ggplot(data=energy, aes(x=V1, y=V2)) +
  geom_line(color = "green", size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variacion de la energia del sistema") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Energía (KJ/mol)")

##################  400 k #####################
ggplot(data=energy.400, aes(x=V1, y=V2)) +
  geom_line(color = "red", size=0.8)+
  geom_point(color= "black", size=0.005)+
  ggtitle("Variacion de la energia del sistema") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Energía (KJ/mol)")

#########juntas ############
ener <- merge(energy,energy.400, by="V1")

ggplot(data=ener) +
  geom_line(color = "green", size=0.7, aes(x=V1,y=V2.x))+
  geom_line(color = "red", size=0.7, aes(x=V1,y=V2.y))+
  ggtitle("Variacion de energia del sistema") +
  theme(plot.title = element_text(hjust = 0.5))+
  xlab("Tiempo (ps)")+
  ylab("Energía (KJ/mol)")

##################RAMACHANDRAN###############

psiphiarg <- merge(psi.arg.3.extra,phi.arg.3.extra, by="V1")
psiphiala <- merge(psi.ala.2.extra,phi.ala.2.extra, by="V1")
psiphithr <- merge(psi.thr.4.extra,phi.thr.4.extra, by="V1")


ggplot(data=psiphiarg, aes(x=V2.y, y=V2.x))+
  stat_density2d(aes(fill = ..level..),
                 geom = "polygon", n = 100)+
  scale_fill_gradient(
  low = "yellow",
  high = "red")+
  ggtitle("Ramachandram arginina")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(-180, 180)+
  ylim(-180, 180)+
  ylab("\u03a8")+
  xlab("\u03d5")

  

ggplot(data=psiphiala, aes(x=V2.y, y=V2.x))+
  stat_density2d(aes(fill = ..level..),
                 geom = "polygon", n = 100,)+
  scale_fill_gradient(
  low = "yellow",
  high = "red")+
  ggtitle("Ramachandram alanina")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(-180, 180)+
  ylim(-180, 180)+
  ylab("\u03a8")+
  xlab("\u03d5")

ggplot(data=psiphithr, aes(x=V2.y, y=V2.x))+
  stat_density2d(aes(fill = ..level..),
                 geom = "polygon", n = 100,)+
  scale_fill_gradient(
  low = "yellow",
  high = "red")+
  ggtitle("Ramachandram treonina")+
  theme(plot.title = element_text(hjust = 0.5))+
  xlim(-180, 180)+
  ylim(-180, 180)+
  ylab("\u03a8")+
  xlab("\u03d5")

