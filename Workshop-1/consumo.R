datos = read.delim("D:\\Documentos\\Maestria\\Estadistica\\Taller1\\consumo.csv",
                   header = T, sep = "\n");
#Frecuencia
transform(datos,
          Fa=cumsum(datos$consumo),
          fr=prop.table(datos$consumo),
          Fr=cumsum(prop.table(datos$consumo)))

#Histograma
h=hist(datos$consumo, plot = F)

#Ojiva
plot(h$mids, cumsum(prop.table(h$counts)), type = "l")