#' @title predict function
#'
#' @param input data for prediction
#'
#' @import randomForest
#'
#' @export

pred <- function(input) {
  input$district <- factor(input$district,
                           levels = c("Bemowo", "Bielany", "Mokotow", "Ochota", "Praga",
                                      "Srodmiescie" ,"Ursus" , "Ursynow" , "Wola", "Zoliborz" ))
  predict(object = modelApartmentsRF::model, newdata = input)
}
