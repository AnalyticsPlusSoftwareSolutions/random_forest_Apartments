#' @title predict function
#'
#' @param input data for prediction
#'
#' @export

pred <- function(input) {
  predict(modelApartmentsRF::model, input)
}
