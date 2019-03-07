datos = c(96, 171, 202, 178, 147,
          157, 185, 90, 116, 172,
          141, 149, 206, 175, 123,
          95, 163, 150, 154, 130,
          108, 119, 183, 151, 114)

m = mean(datos)
md = median(datos)
q30 = quantile(datos, .30)
q70 = quantile(datos, .70)
v = var(datos)
sddatos = sd(datos)
iqrdatos = IQR(datos)

extremoinferior=quantile(datos, .25) - 1.5 * iqrdatos
extremosuperior=quantile(datos, .75) + 1.5 * iqrdatos
extremosuperior
extremoinferior
datos[datos>extremosuperior || datos<extremoinferior]

numdatos = c(1:length(datos))
plot(numdatos, datos, type = "p", main = "Costos")
lines(numdatos, rep(md, length(datos)), col = "green")
lines(numdatos, rep(md, length(datos)) + sddatos, col = "red")
lines(numdatos, rep(md, length(datos)) - sddatos, col = "red")