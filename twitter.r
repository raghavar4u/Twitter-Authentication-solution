library(RCurl)
require(twitteR)
library(ROAuth)


reqURL <- "https://api.twitter.com/oauth/request_token"
 
accessURL <- "https://api.twitter.com/oauth/access_token"
 
authURL <- "https://api.twitter.com/oauth/authorize"

consumerKey <- "XXX"
 
consumerSecret <- "XXXX"

twitCred <- OAuthFactory$new(consumerKey=consumerKey ,
                            consumerSecret=consumerSecret,
                            requestURL=reqURL,
                            accessURL=accessURL,
                            authURL=authURL
)
twitCred$handshake()

access_token = "XXX" 
access_token_secret = "XXX" 
setup_twitter_oauth(consumerKey ,consumerSecret,access_token,
                     access_token_secret)

# Grab latest tweets
tweets_movie <- searchTwitter('@Nameisnani', n=150)

