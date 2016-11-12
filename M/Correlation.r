5.3Correlation (Supervised Learning)
In the same way described in decision tree, you can install the necessary library and load the data.
Using cov(data) you can see relation.
Using pairs(data) you can see the regression.

library(rattle) # If not loaded previously
library(rpart.plot)
library(RColorBrewer)
data <- read.csv("height.csv")
cov(data)
pairs(data)
