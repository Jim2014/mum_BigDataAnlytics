5.4Clustering – Kmeans (Unsupervised Learning)

There are different ways of plotting k-means clustering results
5.4.1Method 1
library(datasets)
irisFeatures <- iris[-5]
km <- kmeans(irisFeatures,3)
km$size
km$cluster
plot(irisFeatures$Petal.Length, col = km$cluster)


5.4.2Method 2

km # Show all the information about km
data(iris) # Using R Iris dataset
head(iris,3) # Just checking the first 3 rows of the dataset


# Iris dataset has 5 columns including 1 target column (species)
# We gonna use only 4 columns (i.e., exclude target column which is the 5th column)
myIris <- iris[,-5] # Assign the first 4 columns of iris dataset to “myIrisData” variable
myIris <- scale(myIrisData) # scaling dataset if they are in different range. 
# Now apply k-means algorithm with k = 2 (k is the number of clusters)
irisKM <- kmeans(myIris,2)
library(fpc) # If not installed, try install.packages
library(cluster)
clusplot(myIris, irisKM$cluster, color = TRUE, lines = 0)


#Now, using different parameters to plot…
# k = 3 with 5 iterations
irisKM <- kmeans(myIris, 3, iter.max = 5)
clusplot(myIris,IrisKM$cluster, color = TRUE, lines = 0)
