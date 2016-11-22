#twitter mining
install.packages("RCurl")
install.packages("twitteR")
install.packages("ROAuth")
install.packages("base64enc")

library(RCurl)
library(twitteR)
library(ROAuth)
library(base64enc)

# make sure to remove the blank spaces (if any) both at the end of your
# apiKey or apiSecret between the quotations

apiKey <- "T3OfRIpmWVgiPVu1LARuQVEqf"
apiSecret <- "Ijjd1FN1JmvqGyiKH2YAcSLqemZcbf9NGWxP0kanwwKpPMPBCp"
accessToken <- "84304937-Vi1CYqNRbjjsoS7ShrjSY7SZHXfmtIqvS4qdXT3w6"
accessSecret <- "HyAdI4yWEXe00Jk1xdjzCEcxIzCNrH1vmdnvkTuL1tzjP";

setup_twitter_oauth(apiKey,apiSecret,access_token=accessToken,access_secret=accessSecret)

#install.packages("tm")
#install.packages("wordcloud")
library(tm)
library(wordcloud)
library(RColorBrewer)
hillaryClinton <- searchTwitter("#hillaryclinton",n = 500,lang="en",resultType="recent")
hillaryClinton_text = sapply(hillaryClinton, function(x) x$getText())
#usableText=str_replace_all(tweets$text,"[^[:graph:]]", " ") 
hillaryClinton_corpus = Corpus(VectorSource(hillaryClinton_text))

#tdm = TermDocumentMatrix(
#  hillaryClinton_corpus,
#  control = list(
#    removePunctuation = TRUE,
#    stopwords = c("hillaryclinton", "HillaryClinton", "hillaryClinton", stopwords("english")),
#   removeNumbers = TRUE, tolower = TRUE)
#)

hillary_clean <- tm_map(hillaryClinton_corpus,removePunctuation)
hillary_clean <- tm_map(hillary_clean,content_transformer(tolower))
hillary_clean <- tm_map(hillary_clean, removeWords, stopwords("english"))
hillary_clean <- tm_map(hillary_clean,removeNumbers)
hillary_clean <- tm_map(hillary_clean,stripWhitespace)
hillary_clean <- tm_map(hillary_clean, removeWords, c("hillaryclinton", "HillaryClinton", "hillaryClinton"))

tdm <- TermDocumentMatrix(hillary_clean)
m = as.matrix(tdm)

# get word counts in decreasing order
word_freqs = sort(rowSums(m), decreasing = TRUE) 

# create a data frame with words and their frequencies
dm = data.frame(word = names(word_freqs), freq = word_freqs)
dm <- dm[1:100,]
wordcloud(dm$word, dm$freq, random.order = FALSE, colors = topo.colors(100))
