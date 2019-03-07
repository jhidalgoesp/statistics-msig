#Tabla de frecuencia tipo III sueldos
datos = read.delim("D:\\Documentos\\Maestria\\Estadistica\\SueldoT.csv", header = TRUE,
                   sep = ";");
#breaks = numero de intervalos, include.lowest = extremo inferior, right = extremo superior
#dig.lab = notacion cientifica
ta = data.frame(table(Intervalo=factor(cut(datos$Sueldo,breaks = 5, include.lowest = TRUE,
                           right = FALSE, dig.lab = 4))))
names(ta) =c("Intervalo", "fa")
transform(ta, 
          Fa=cumsum(ta$Freq),
          fr=prop.table(ta$Freq),
          Fr=cumsum(prop.table(ta$Freq)))
#Histograma
h=hist(datos$Sueldo, breaks = 4)

library(agricolae)
tbFreqMat = table.freq(h)

#Poligono
plot(h$mids, h$counts, type = "l")

#Ojiva
