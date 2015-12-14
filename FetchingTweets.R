searchString <- "ArvindKejriwal"
tweets.list <- searchTwitter( searchString,n=10000 , lang = 'en' )
tweets.df <- twListToDF(tweets.list)
write.csv(tweets.df, 'tweets.csv',row.names=F)