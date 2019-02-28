datos = read.delim("D:\\Documentos\\Maestria\\Estadistica\\NOTAS_MAT.csv", header = T,
                   sep = ";", dec = ",");

#Filtrar
p8=datos$MAT[datos$PARALELO=="EDC8"]
p2=datos$MAT[datos$PARALELO=="EDC2"]
#Coeficiente de variacion
cv2=sd(p2)/mean(p2)
cv8=sd(p8)/mean(p8)
#Ploteando
#Dividir cuadricula
par(mfrow=c(2,1))
est=c(1:length(p2))
plot(est, p2, type = "l", main = "Notas mat p2")
lines(est, rep(mean(p2), length(p2)), col = "red")

est8=c(1:length(p8))
plot(est8, p8, type = "l", main = "Notas mat p8")
lines(est8, rep(mean(p8), length(p8)), col = "red")

boxplot(datos$MAT~datos$CARRERA)