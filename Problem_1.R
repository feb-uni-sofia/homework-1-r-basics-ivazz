
## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.
## Do not leave blanks before paranthesis, e.g.
## BAD: data.frame (x, y)
## GOOTD: data.frame(x, y)

## At the very least use the automatic prettifier that comes with R-Studio. Select all lines (e.g. with Ctrl-A)
## and select Code => Reformat Code

## Use comments like a), b) to show which part of the problem  
## you are referring to with your code 

x <- c(4, 1, 1, 4)
y <- c(1, 4)
x-y
## Missing explanation

s <- c(x, y)

rep (s, 10)

z <- rep (s, 10)
length(z)

rep (s, each=3)

seq (7, 21)
7:21

length(7:21)
