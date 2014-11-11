
#Problem 3:

library(xlsx)

file <-download.file("https://d396qusza40orc.cloudfront.net/getdata%
          2Fdata%2FDATA.gov_NGAP.xlsx",destfile="C:/Users/Akshay
                     /Documents/quiz1.xlsx",mode="wb")

dat <-read.xlsx("C:/Users/Akshay/Documents/quiz1.xlsx",sheetIndex=1,
                rowIndex=rowIndex,colIndex=colIndex)
sum(dat$Zip*dat$Ext,na.rm=T) 

