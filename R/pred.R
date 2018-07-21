#' @title predict function
#'
#' @param input data for prediction
#'
#' @import randomForest
#'
#' @export

pred <- function(input) {
  predict(modelApartmentsRF::model, input)
}
