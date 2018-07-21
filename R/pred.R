#' @title predict function
#'
#' @param input data for prediction
#'
#' @import randomForest
#'
#' @export

pred <- function(input) {
  predict(object = modelApartmentsRF::model, newdata = input)
}
