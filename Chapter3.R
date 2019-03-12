library(tidyverse)
library(rpart)
library(rpart.plot)
library(caret)
setwd("D:\\Documentos\\Maestria\\Estadistica\\Capitulo3")
Datos_churn=read.delim("churn.csv", header = T, sep = ";", dec=".")
view(Datos_churn)
#Muestra 70% conjunto original
churn_model=sample_frac(Datos_churn, 0.7)
#Diferencia de iris modelo con iris datos
churn_test=setdiff(Datos_churn, churn_model)
view(churn_model)
view(churn_test)

#Crear arbol
#iris~v1+v2+v3+v4 .=todas
#class variable factor cualitativa
arbol=rpart(churn~., method = "class", data = churn_model)
rpart.plot(arbol)

#Prediccion
pre=predict(arbol, newdata = churn_test, type = "class")
t=table(pre, churn_test$churn)

#Especificidad y Sensividad

library(epiR)
TD_table <- as.table(t, nrow = 2, byrow = 2)
rownames(TD_table) <-c("Yes", "No")
colnames(TD_table) <-c("Cancela el servicio", "No cancela el servicio")
plot(t(TD_table), main = "Prevalencia 10%")
epi.tests(TD_table, conf.level = .95)
