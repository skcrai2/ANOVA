#load the data
setwd("E:/School/STAT 5050 - Fall 2017/Week 10")
bulbs <- read.csv("Lightbulb Lifetimes Stacked.csv")
bulbs

#let's take a look at the data by making side-by-side boxplots
boxplot(Lifetime~Brand, data=bulbs)

#It looks like the three boxplots have relatively similar means.  
#The medians of brands 1 and 3 fall within the median-Q3 range for brand 2, 
#and the plots look relatively normal, so you would expect the means to be relatively similar to medians 
#(except brand 3, which will be pulled up due to the long top whisker).


#Next we will alter these data sets. We will keep them centered at their 
#respective means, but contract each data set by a factor of 4. Make side-by-side 
#boxplots of the new data 

b1<-c(86,17,53,1,18,53,62,119,117,149)
b2<-c(77,98,129,65,155,2,1,199,50,191)
b3<-c(49,85,114,193,211,34,4,25,19,76)
b11<-(b1-mean(b1))/4+mean(b1)
b22<-(b2-mean(b2))/4+mean(b2)
b33<-(b3-mean(b3))/4+mean(b3)
boxplot(b1,b2,b3,b11,b22,b33, horizontal=TRUE)

#The new boxplots are the same, but they are contracted by a factor of 4.  
#This makes it easier to tell that there may be differences between the means

b111<-(b1-mean(b1))/4+mean(b1)
b222<-(b2-mean(b2))/4+mean(b2)
b333<-(b3-mean(b3))/4+mean(b3)
boxplot(b1,b2,b3,b11,b22,b33,b111,b222,b333, horizontal=TRUE)

#The differences between the means appear even more evident when you contract the databy a factor of 15

#Now, let's look at the ANOVA analysis to see what the above inferences really mean

out<-aov(bulbs$Lifetime~bulbs$Brand)
summary(out)

#P value greater than .05, so fail to reject the claim that population means are the same.
#This makes sense because we saw very little difference in the means until we used a factor of 15
