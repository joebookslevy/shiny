shinyUI(pageWithSidebar(
  headerPanel("Student Knowledge of Borrowing Considerations"),
  sidebarPanel(
   radioButtons("id1", "Select a student type to learn more about their knowledge of borrowing conditions.",
                       c("None selected"="",
                         "Continuing Graduate Student" = "While only one student was scored, they scored a 5 out of 5 on the rubric.",
                         "Continuing Undergraduate Student" = "Two students scored 5 out of 5 on the rubric, but one only scored 2 out of 5.",
                         "New Graduate Student"="One student scored 4 out of 5 on the rubric, another scored 5 out of 5 on the rubric - pretty good!", 
                         "New Undergraduate Student"="Two students scored 4 out of 5 on the rubric, two more scored 5 out of 5 on the rubric - solid!")),
    actionButton("goButton","Submit")
  ),
  mainPanel(
    plotOutput('newHist'),
    h4('Selected student type information:'),
    textOutput('oid1')
  )
))