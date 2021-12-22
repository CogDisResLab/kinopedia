#' global_analysis
#'
#' Aggregates the peptides from all group comparisons at the specified LFC threshold into a
#' single vector, then makes a heatmap
#'
#' @param model ;data_modeled from KRSA
#' @param data ;data_pw_100 from KRSA
#' @param comparisons ;list of all possible comparisons from the run
#' @param threshold ;user-defined LFC threshold
#'
#' @return a global heatmap
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
global_analysis <- function(model, data, comparisons, threshold){
  peps_1 <- group_compare(groups = comparisons$comp1, data, model, threshold)
  peps_2 <- group_compare(groups = comparisons$comp2, data, model, threshold)
  peps_3 <- group_compare(groups = comparisons$comp3, data, model, threshold)
  report_peps <- unique(c(peps_1, peps_2, peps_3))
  globalHeatmap <- global_heatmap(model$grouped, report_peps)
  globalHeatmap
}
