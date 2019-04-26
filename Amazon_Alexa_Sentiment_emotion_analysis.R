
install.packages("syuzhet") 
install.packages("lubridate") 
install.packages("ggplot2")
install.packages("scales")
install.packages("reshape2") 
install.packages("dplyr") 


library(syuzhet)
library(lubridate)
library(ggplot2)
library(scales)
library(reshape2)
library(dplyr)

data <- read.csv("https://github.com/chiharuishida/AmazonReview_ratingsandemotions/blob/master/amazon_alexa_textonly.csv")
setwd("H:/BrandManagement_Spring2019/R")

text=readLines("amazon_alexa_textonly.csv")

sent.text<-get_nrc_sentiment(text)
head(sent.text)
sent.text
write.csv(sent.text, "amazon_alexa_emotions.csv")
