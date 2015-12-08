library(sentiment)
sentimentResults <- sentiment(tweets_cleaned.df$cleaned_text)
sentimentDataFrame.df <- cbind(tweets_cleaned.df,sentiment = sentimentResults$polarity)
write.csv(sentimentDataFrame.df, 'tweets.csv',row.names=F)