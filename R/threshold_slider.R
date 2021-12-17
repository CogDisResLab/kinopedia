#' threshold_slider
#'
#' Sets up the threshold slider that can be interacted with by the user.
#'
#' @param id ;id for the widget
#'
#' @return ;a slider for entering a theshold
#' @export
#'
#' @examples
#' TRUE
thresholdSlider <- function(id){
  sliderInput(id, label = "LogFC Threshold", val = 4, min = 0, max = 5, step = 0.1)
}
