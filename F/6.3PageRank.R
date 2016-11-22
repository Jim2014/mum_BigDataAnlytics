#install.packages("igraph")
library(igraph)
myGraph <- graph(c( "A", "B", "A", "D", "B", "A", "B", "B", "B", "C", "C", "A", "D", "C", "D", "D"), directed = TRUE)
plot(myGraph)
