## IMPORT DATA ##
data<-read.csv(file.choose(), header = T)
data
attach(data)

## TO CHECK THE DIMENSION OF THE GIVEN DATA ##
str(data)
names(data)
length(Hours)
length(Scores)

## FIT SIMPLE LINEAR REGRESSION TO GIVEN DATA ##
# SCORES ARE DEPENDENT VARIBLE AND HOURS IS INDEPENDENT VARIBLE #
model<-lm(Scores~Hours)
model

#i.e. from above model we get model parameters#
## SUMMARY OF THE MODEL ##
summary(model)

## GRAPHICAL REPRESENTATION OF GIVEN OBSERVATIONS TO CHECK MODEL FIT ##
plot(Hours,Scores,main = "scatter Plot",pch=15, col="yellow")
abline(lm(Scores~Hours),col= "red")

### WE ALREADY FIND MODEL PARAMETERS. NOW WE USE REGRESSION EQUATION TO PRIDICT THE SCORES 
y=2.484+(9.776*9.25)
y

#### CONCLUSION : THE SCORE AT STUDIYING 9.25 HOURS IS 92.912 ####
