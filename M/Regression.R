5.2Regression (Supervised Learning)
With R is possible work with multiple linear regression. 

myData <- read.csv("Ht_Wt_wMarch16.csv")
head(myData,5)
  Height age gend  wt
1     71  24    M 165
2     68  29    M 165
3     72  34    M 180
4     67  21    F 113
5     72  32    M 178

x <- lm(myData$wt ~ myData$Height + myData$age + myData$gend) #Runs the correlation
summary(x)

Call:
lm(formula = myData$wt ~ myData$Height + myData$age + myData$gend)

Residuals:
    Min      1Q  Median      3Q     Max 
-46.405 -19.329  -1.992  16.141  65.594 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept)   -59.7711    37.7863  -1.582 0.115678    
myData$Height   2.7103     0.5571   4.865 2.73e-06 ***
myData$age      0.5700     0.4251   1.341 0.181844    
myData$gendM   19.9375     5.1898   3.842 0.000176 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 23.61 on 159 degrees of freedom
Multiple R-squared:  0.3024,	Adjusted R-squared:  0.2893 
F-statistic: 22.98 on 3 and 159 DF,  p-value: 2.068e-12

coefficients(x)
(Intercept) myData$Height    myData$age  myData$gendM 
  -59.7710660     2.7102542     0.5700159    19.9374996
