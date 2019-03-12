#12 llamadas por dia, x = numero de llamadas por dia
#A Probabilidad que reciba mas de 20 llamadas
dpois(20, 15)
Pa = 1- ppois(20, lambda = 12, lower.tail = T)

#B Probabilidad menos de 12
Pb = ppois(11, lambda = 12, lower.tail = T)

#C 5 en 12 horas
Pc = dpois(5, 6)


#Porcentaje poblacion entre 95 y 110
mu=100
sig=15
Ra=pnorm(110, mu, sig) - pnorm(95, mu, sig)


qnorm(p = c(.25, .75), mu, sig)

#2500 individuos mayor a 125
prob = pnorm(125, mu, sig, lower.tail = F)
prob * 2500


#Uno al azar utilice mas de 5%
md=4.5
dv=.5

1 - pnorm(5, md, dv)

#Utiliza la tarjeta menos de 3.75
pnorm(3.75, md, dv, lower.tail = T)


#20% mas alto

#10% mas bajo
qnorm(c(.1), md, dv)



