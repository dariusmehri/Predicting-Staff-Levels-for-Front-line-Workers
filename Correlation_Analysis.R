#Correlation analysis

install.packages("Hmisc")
install.packages("ggm")
install.packages("ggplot2")
install.packages("polycor")

library(boot)
library(ggm)
library(ggplot2)
library(polycor)


df <- read.csv('S:\\Office of Risk Management\\User Folders\\Darius Mehri\\Enforcement Inspection Analysis\\Front Line Workers\\qmatic and leave 2016 6.csv', header=T, na.strings=c("","NA"))


names(df)

df$ln_avg_wait = log(df$Avg.Wait.Time..hours.)

hist(df$ln_avg_wait)

#All data
#pearson
cor.test(df$Leave.Index, df$ln_avg_wait, method = "pearson")

#By job function:
dfjob = df[df$Job.Function == "APP PROCESSING", ]
cor.test(dfjob$Leave.Index, dfjob$ln_avg_wait, method = "pearson")

#by Boro
dfboro = df[df$Branch.Name == "QUEENS", ]
cor.test(dfboro$Leave.Index, dfboro$ln_avg_wait, method = "pearson")


#Spearman
cor.test(df$Leave.Index, df$Avg.Wait.Time..hours., method = "spearman")

#By job function
cor.test(dfjob$Leave.Index, dfjob$Avg.Wait.Time..hours., method = "spearman")

#By boro
cor.test(dfboro$Leave.Index, dfboro$Avg.Wait.Time..hours., method = "spearman")





