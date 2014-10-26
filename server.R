calculatePayment <- function(p, i, n) (p * i) / (1 - (1 + i)^(-n))

library(shiny)
shinyServer(
    function(input, output){
        output$outLoan <-renderPrint({as.numeric(input$totalSale) - as.numeric(input$downpayment)})
        output$outRate <- renderPrint({input$rate})
        output$outPeriod <- renderPrint({input$period})
        output$outPayment <- renderPrint({round(calculatePayment(as.numeric(input$totalSale) - as.numeric(input$downpayment), (input$rate / 100) / 12, as.numeric(input$period) * 12), digits = 2)})
    })