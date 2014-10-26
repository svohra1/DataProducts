library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Car Payment Calculator"),
    sidebarPanel(
        textInput(inputId = "totalSale", label = "Total Sale Price"),
        textInput(inputId = "downpayment", label = "Downpayment"),
        numericInput("rate", "Interest Rate (1% to 12%)", 1, min = 1, max = 12, step = 1),
        radioButtons("period", "Repayment Period", c("1 year" = "1", "3 years" = "3", "5 years" = "5", "7 years" = "7"))
        ),    
    mainPanel(
        h3("Summary Results"),
        h4("Amount to be Financed"),
        verbatimTextOutput("outLoan"),
        h4("Interest Rate"),
        verbatimTextOutput("outRate"),
        h4("Repayment Period"),
        verbatimTextOutput("outPeriod"),
        h4("Monthly Payment"),
        verbatimTextOutput("outPayment"),
        p("Documentation:",a("Car Payment Calculator",href="HelpFileName.html"))
        )
    )
)

    
