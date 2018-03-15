xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
xmin-xmax
Avgxmin <- mean(xmin)
Avgxmin
Avgmax <- mean(xmax)
Avgmax
xmin[xmin<Avgxmin]
xmin[xmax>Avgmax]
names(xmin) <- MinTemp
names(xmax) <- MaxTemp
MaxTemp <- names(xmax)
MinTemp <- names(xmin)
Temperatures <- data.frame(xmin=MinTemp, xmax=MaxTemp)
Temperatures <-within(Temperatures,{MinTempFahrenheit=MinTemp*9/5+32})
##
