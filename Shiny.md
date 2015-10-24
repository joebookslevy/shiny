Interactive Data Reviewer
========================================================
author: JoeBooksLevy
date: October 24, 2015

Reviewing Data
========================================================

- Often, people take data at face value and do not dig in to what it means comparatively.
- This application presents data important to financial student services regarding students and their ability to identify borrowing considerations.
- The data comes from advisor observations of a small group of students of varying enrollment types. The advisors used a rubric to score student learning with respect to borrowing considerations. The rubric scale goes from Beginner - 1 up to Advanced - 5. The higher the score, the better the student learning.

What's Happening? (R Code)
========================================================


```r
library(ggplot2)
##Data loading/reading code
  dat2<-read.csv("AAData2.csv")
  dat3<-dat2[!is.na(dat2$Borrowing.Considerations),]
  ##Creating varible to use for plot plot
  student2<-dat3$Student.Type
##Plot borrowing consideration data
b<-ggplot(dat3, aes(x=dat3$Borrowing.Considerations, fill=student2))+geom_histogram()+labs(title="Rubric Scores for Borrowing Consideration Knowledge")+xlab("Rubric Score")+ylab("Frequency")+labs(fill="Student Type")
```

Plot of Data
========================================================

To aid with plot interpretation, my app adds context about student type. Explore the app: https://joebookslevy.shinyapps.io/APPNAME

![plot of chunk unnamed-chunk-2](Shiny-figure/unnamed-chunk-2-1.png) 

Customization Possibilities for App
========================================================

- While the existing needs are somewhat limited, the app provides a base of an application which contents could be expanded.
- More or different data could be added to gear content towards specific needs or stakeholders.
- Necessary files can be found in this github repository: https://github.com/joebookslevy/shiny
