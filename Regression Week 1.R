fileUrl <-"http://www.math.uah.edu/stat/data/Galton.csv"
#reading a link from the internet. http is important.

download.file(fileUrl,destfile="C:/Users/Akshay/Documents/R/galton.csv")
#downloading a file. destfile needs to be given and for mac, method needs
#to be specified.

#reads the data of the csv format.
data <-read.csv("C:/Users/Akshay/Documents/R/galton.csv")

#gives the column names of a table
colnames(data)

#gives side by side graphs for 2 of the plots. c(1,3) gives spaces for
#3 plots.
par(mfrow=c(1,2))

#used to create a histogram
hist(data$Child,col="red",breaks=100)
hist(data$Midparent,col="red",breaks=100)

library(manipulate)
myHist<-function(mu){
  hist(data$Child,col="blue",breaks=100)
  
  lines(c(mu,mu),c(0,150),col="red",lwd=5)
  mse<-mean((data$Child-mu)^2)
  #used to paste text in the plot. 68 here is length and 150 is the height
  #of the plot area. edit this to see the movement of the text
  #round is used to round of to number of decimal points.
  text(72,150,paste("mu=",mu))
  text(72,100,paste("MSE=",round(mse,2)))
}
#used to create a slider and manipulate a variable
manipulate(myHist(mu),mu=slider(62,74,step=0.5))


