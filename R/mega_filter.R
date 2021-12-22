#' mega_filter
#'
#' Combines multiple filter functions into one.
#'
#' @param data ;data_pw_100 file from KRSA
#' @param data2 ;model file from KRSA
#' @param signal_threshold ;threshold to filter the low signal peptides
#' @param r2_threshold ;threshold to filter out the nonlinear peptides
#' @param groups ;user-defined peptides
#'
#' @return a vector of pepties
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
mega_filter <- function(data, model, signal_threshold, r2_threshold, groups){
  p <- low_filter(data, signal_threshold, groups)
  p2 <- model$scaled%>%
    dplyr::filter(Peptide %in% p)%>%
    nonlinear_filter(r2_threshold, groups)
  p3 <- ref_filter(p2)
  p3
}
