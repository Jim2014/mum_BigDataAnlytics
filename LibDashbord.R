par(mfrow=c(2,3))

#Graph 1
proSale <-c(2000,1500,500,500)
lbls <- c('Food','Clothing','Wellness','Education')
pct <- round(proSale/sum(proSale)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(proSale,labels = lbls, col=rainbow(length(lbls)),
    main="1.Product Sale",radius = 1)

#Graph 2
YearSale<-c(1000,1550,2300,3400,5100)
Year<-c('2011','2012','2013','2014','2015')
plot(Year,YearSale,
     main = '2.Year Sale',
     ylab='Sale(M$)')

lines(Year,YearSale,col='red')


# Graph 3
Profit<-YearSale*0.05 
barplot(Profit, main="3.Profit",
        names.arg = Year,
        xlab='Year',
        ylab='Profit(M$)',
         col=c("darkblue"))
#graph 4
library(plotrix)
lbls <- c("US", "UK", "Australia",  "France")
pie3D(proSale,labels=lbls,
      main="4.Sale of Countries ")

# graph 5
foodSale<-YearSale*0.44
clothSale<-YearSale*0.33
wellSale<-YearSale*0.11

plot(Year,foodSale,
     main = '5.Year Sale - product',
     ylab='Sale(M$)')
points(Year,clothSale)
points(Year,wellSale)
lines(Year,foodSale)
lines(Year,clothSale,col='red')
lines(Year,wellSale,col='blue')
legend("topleft",  
       col = c("black", "blue", "red"), 
       legend = c("food", "cloth", "well"), lty=1, lwd=1)

#graph 6
Donate<-Profit*0.2
y <- rbind(Profit,Donate)
barplot(y, 
        main="6.Profit & Donate",
        xlab='Year',
        ylab='Profit(M$)',
        col=c("darkblue","red"),
        names.arg = Year,
        legend.text =  rownames(y),
        args.legend = list(x = "topleft", bty = "n")
        )