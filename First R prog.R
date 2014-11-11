columnmean <-function(y, removeNA=TRUE)
{
  nc <-ncol(y) #finding means of the columns of data
  means <-numeric(nc)
  for (i in 1:nc)
  {
    means[i]=mean(y[,i], na.rm=removeNA)
    
  }
  means
}