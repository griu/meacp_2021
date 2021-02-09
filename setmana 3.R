library(foreign)
data <- read.spss( "http://84.89.132.1/~satorra/dades/PAISOS.SAV", use.value.labels = TRUE, to.data.frame = TRUE )

names(data)
dim(data)



reg3_2 <- lm(ESPVIDA ~   CALORIES + PIB + Lhabmetges  +ALFAB, data=data)
summary(reg3_2)
avPlots(reg3_2)


library(car)

vif(reg3)

