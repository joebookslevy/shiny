library(devtools)
library(shiny)
library(UsingR)
library(ggplot2)
##Data loading/reading code
data<-read.csv("AAData.csv")
dat<-data[complete.cases(data[,c(5,6)]),]
dat2<-read.csv("AAData2.csv")
dat22<-dat2[!is.na(dat2$Program.Difference.Number),]
dat3<-dat22[!is.na(dat22$Borrowing.Considerations),]
##Creating varibles to use plot
student<-dat$Student.Type
number<-as.factor(dat$Program.Difference.Number)
student2<-dat3$Student.Type
number2<-as.factor(dat3$Program.Difference.Number)
borrow<-as.factor(dat3$Borrowing.Considerations)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      ggplot(dat3, aes(x=dat3$Borrowing.Considerations, fill=student2))+geom_histogram()+labs(title="Rubric Scores for Borrowing Consideration Knowledge")+xlab("Rubric Score")+ylab("Frequency")+labs(fill="Student Type")
    })
    output$oid1<-renderText({
      input$goButton
      isolate(input$id1)})
  }
)