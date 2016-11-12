5.1Decision Tree (Supervised Learning)

library("rpart") #load the library for decision tree
# Draw the tree and assign to any variable (in our case, "myTree”)
# Here Age, Job, House and Credit are column names and we are using decision tree to predict "LoanApproved” based on those columns, loanData is the variable name and
# method=class stands for classification.
loanData <- read.csv("Loan-Approval+dataset.csv”) # read dataset
loan_tree = rpart(formula = LoanApproved ~ Age + Job + House + Credit, data = loanData, method = "class", control = rpart.control(minsplit = 5))
plot(loan_tree) # plot the tree
text(loan_tree) # Insert labels on tree



# To make the tree little bit fancy, install some extra packages
install.packages("rattle”)
install.packages("RColorBrewer") # Don’t forget that R is case sensitive
install.packages("rpart.plot”)
library(rattle) # Load rattle library
library(RColorBrewer)
library(rpart.plot)
fancyRpartPlot(loan_tree) # We are using the same “loan_tree” variable previously assigned





