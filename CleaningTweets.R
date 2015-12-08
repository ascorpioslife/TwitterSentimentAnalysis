library(plyr)
library(stringr)
clean.text <- function(tweet_text)
{
  tweet_text<- iconv(tweet_text, "latin1", "ASCII", sub="")
  tweet_text = gsub("(RT|via)((?:\\b\\W*@\\w+)+)", "",tweet_text)
  tweet_text = gsub("@\\w+", "",tweet_text)
    tweet_text = gsub("[[:punct:]]", "",tweet_text)
  #tweet_text = gsub("[[:digit:]]", "",tweet_text)
  tweet_text = gsub("http\\w+", "",tweet_text)
  tweet_text = gsub("https:\\w+", "",tweet_text)
  #tweet_text = gsub("[ t]{2,}", "",tweet_text)
  tweet_text = gsub("^\\s+|\\s+$", "",tweet_text)
  tweet_text = gsub("amp", "",tweet_text)
  tweet_text = tolower(tweet_text)
  
  return (tweet_text)
  
}
tweets_cleaned.df<-ddply(tweets.df,"id",transform,cleaned_text = clean.text(text))
write.csv(tweets_cleaned.df, 'tweets.csv',row.names=F)
