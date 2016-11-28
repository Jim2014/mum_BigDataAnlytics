#GroupAssignments
##Team Member
Jin Zhou, Ke Jin, Le Wang
##Subject
Streaming Twitter on Spark Tutorial on AWS Cloud 
##Solution
###Run scala on Spark
We firstly installed Spark on AWS and run scala program on it, but it can not work because of lacking of jar file.
###Run R on SparkR
- Install SparkR on AWS EMR
- We found a new method of installing Spark/Hadoop cluster on AWS: Using EMR on AWS please see the document:[SparkR install on EMR.doc](https://github.com/Jim2014/mum_BigDataAnlytics/blob/master/GroupAssignments/SparkR%20install%20on%20EMR.doc) 
- When we run the twitter R code (from the course), we meet some problem: It can not install some package needed ,such as tm,wordcloud.We found that this is caused by R version,AWS EMR installed R-3.2.2 but some package cannot be used at that version(new the newest version is R-3.3.2, R-3.2.2 is the version one year before)
###Summary
It is a little regret that we can not solve the problem finaly. But through research we found the new method to create a Hadoop/Spark cluster on AWS.
