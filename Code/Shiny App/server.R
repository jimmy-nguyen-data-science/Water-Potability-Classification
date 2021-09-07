
library(caret)
library(shiny)
library(LiblineaR)
library(readr)
library(ggplot2)





shinyServer(function(input, output) {

  options(shiny.maxRequestSize = 800*1024^2)   # This is a number which specifies the maximum web request size, 
                                               # which serves as a size limit for file uploads. 
                                               # If unset, the maximum request size defaults to 5MB.
                                               # The value I have put here is 80MB
  
  
  output$sample_input_data_heading = renderUI({   # show only if data has been uploaded
    inFile <- input$file1
    
    if (is.null(inFile)){
      return(NULL)
    }else{
      tags$h4('New data')
    }
   })

  output$sample_input_data = renderTable({    # show sample of uploaded data
    inFile <- input$file1
    
    if (is.null(inFile)){
      return(NULL)
    }else{
      input_data =  readr::read_csv(input$file1$datapath, col_names = TRUE)
      
      colnames(input_data) = c("ph","Hardness","Solids",
                               "Chloramines","Sulfate","Conductivity",
                               "Organic_carbon","Trihalomethanes","Turbidity")
      
     
      head(input_data)
    }
  })
  
  

predictions<-reactive({
    
    inFile <- input$file1
    
    if (is.null(inFile)){
      return(NULL)
    }else{
      withProgress(message = 'Predictions in progress. Please wait ...', {
      input_data =  readr::read_csv(input$file1$datapath, col_names = TRUE)
      
      colnames(input_data) = c("ph","Hardness","Solids",
                               "Chloramines","Sulfate","Conductivity",
                               "Organic_carbon","Trihalomethanes","Turbidity")
      

      my_model <- readRDS("water_nnet.rds")
      prediction = predict(my_model, input_data)
      
      input_data_with_prediction = cbind(input_data,prediction )
      input_data_with_prediction
      
      })
    }
  })
  

output$sample_prediction_heading = renderUI({  # show only if data has been uploaded
  inFile <- input$file1

  if (is.null(inFile)){
    return(NULL)
  }else{
    tags$h4('Sample predictions')
  }
})

output$sample_predictions = renderTable({   # the last 6 rows to show
 pred = predictions()
head(pred)

})


output$plot_predictions = renderPlot({   # the last 6 rows to show
  pred = predictions()
  cols <- c("no" = "red","yes" = "blue")
 ggplot(pred, aes(x = ph, y = Solids, color = factor(prediction))) + geom_point(size = 4, shape = 19, alpha = 0.6) +
    scale_colour_manual(values = cols,labels = c("no", "yes"),name="Test Result")
 
 
 
  
})


# Downloadable csv of predictions ----

output$downloadData <- downloadHandler(
  filename = function() {
    paste("input_data_with_predictions", ".csv", sep = "")
  },
  content = function(file) {
    write.csv(predictions(), file, row.names = FALSE)
  })

})

