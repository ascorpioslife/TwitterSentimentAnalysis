# TwitterSentimentAnalysis
Analyzed sentiments of tweets on different Trending Topics like #ArvindKejriwal,#ChennaiRains,#ParisAttacks.
--------
#TwitterAuthentication.R
Created an App on twitter and got Access token and API Keys from it.Used TwitteR package for this purpose.
--------
#FetchingTweets.R
Defined a search string on which the search for tweets will be performed.Using searchTwitter function requested for 10,000 tweets in English language.Stored them into a dataframe and .csv file
--------
#CleaningTweets.R
Performed a preprocessing on dataframe of tweets to clean all the tweets in desired text format.Removed web addresses,digits etc and stored cleaned data into tweets_cleaned.df.Used plyr package in this part.
--------
#SentimentCalculation.R
Used Sentiment140 package to decide the polarity of a tweet.Stored resulted data into  SentimentDataframe.df
--------
#VisualisationResults.R
Finally visualized resulting data with a barchart and piechart for better understanding of large no of tweets.



