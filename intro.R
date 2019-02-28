#Comentarios
#Recolectar datos
color = c("Azul", "Naranja", "Cafe", "Verde", "Naranja", "Blanco", "Amarillo", "Verde", "Azul",
          "Negro", "Azul", "Blanco", "Cafe", "Verde", "Blanco", "Verde");
#Frecuencia absoluta
ta = table(color);
#La tabla frecuencia crearla como dataframe
D = data.frame(table(colores = color));
#Frecuencia relativa
tr = prop.table(D$Freq);
#Generar la tabla de frecuencia
#F para acumulada f para relativa
#Freq frecuencia absoluta
#Fa frecuencia absoluta acumulada
#fr frecuencia relativa
#Fr frecuencia relativa acumulada
transform(D, 
          Fa = cumsum(D$Freq),
          fr = prop.table(D$Freq),
          Fr = cumsum(prop.table(D$Freq)));


#Ejemplo datos cargados desde un csv
#setwd Set working directory

Datos = read.delim("D:\\Documentos\\Maestria\\Estadistica\\NOTAS_EDC-1.csv", 
                   sep = "\t", dec=",", header = T);
Dc = data.frame(table(carreras = Datos$CARRERA));
transform(Dc,
          fr = prop.table(Dc$Freq));








