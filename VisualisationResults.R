
library(RColorBrewer)
darkcols <- brewer.pal(8, "Dark2")
par(mfrow = c(1,2))

plot(sentimentDataFrame.df$sentiment,xlab = "Polarity",ylab="No. of tweets",col=topo.colors(3),col.lab="blue")
posCount <- sum(sentimentDataFrame.df$sentiment == "positive")
negCount <- sum(sentimentDataFrame.df$sentiment == "negative")
neutCount <- sum(sentimentDataFrame.df$sentiment == "neutral")

slices <- c(negCount,neutCount,posCount)
perc <- round(slices/sum(slices)*100)
lbls <- c( "Negative","Neutral","Positive")
lbls <- paste(lbls,perc)
lbls <- paste(lbls,"%",sep = "")
#fan.plot(c(posCount,negCount,neutCount),labels = c("Positive", "Negative","Neutral") ,align="left",max.span = pi)
pie(slices,labels = lbls,col=darkcols[5:7])
mtext(paste("Visualization of Sentiment of Twitter data for :",searchString), side = 3, line = -4, outer = TRUE)