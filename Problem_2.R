## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.
## Do not leave blanks before paranthesis, e.g.
## BAD: data.frame (x, y)
## GOOTD: data.frame(x, y)

## At the very least use the automatic prettifier that comes with R-Studio. Select all lines (e.g. with Ctrl-A)
## and select Code => Reformat Code


## Use comments like a), b) to show which part of the problem  
## you are referring to with your code 

xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
xmin-xmax
Avgxmin <- mean(xmin)
Avgmax <- mean(xmax)
xmin[xmin<Avgxmin]
xmin[xmax>Avgmax]



## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin)<-c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmax)<-c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')

## Unnecessary code!
MaxTemp <- names(xmax)
MinTemp <- names(xmin)


temperatures<-data.frame(xmin,xmax)

## Improve readability
temperatures<-within(temperatures, {
	xminFahrenheit=xmin*9/5+32
})


temperaturesFahrenheit <- data.frame(Max_temp_Fahr = xmax*9/5 + 32,Min_temp_Fahr = xmin*9/5 + 32)
MonFri_temperaturesFahrenheit<-data.frame(Max_temp_Fahr=xmax[seq(1:5)]*9/5+32, Min_temp_Fahr=xmin[seq(1:5)]*9/5+32)
MonFri_temperaturesFahrenheit<-data.frame(Max_temp_Fahr = xmax[seq(length(xmax)-2)]*9/5 + 32,Min_temp_Fahr = xmin[seq(length(xmin)-2)]*9/5 + 32)

## Better:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
