datos = read.delim("D:\\Documentos\\Maestria\\Estadistica\\Taller1\\ventas.csv",
                   header = T, sep = ";", dec = ",");
#Frecuencia
Dc = data.frame(table(Empleado = datos$EmployeeID));

#Diagrama de barra cantidad de pedidos por Empleado
plot(Dc$Empleado, Dc$Freq, Type = "")

barplot(Dc$Freq, main = "Cantidad de pedidos",
        xlab = "Empleado")

#Puntos porcentuales
transform(Dc,
          fr=prop.table(Dc$Freq))