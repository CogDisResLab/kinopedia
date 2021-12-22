#' group_analysis
#'
#' Generates a peptide list from a group comparison and makes a heatmap
#'
#' @param model ;the model object from KRSA
#' @param groups ;user-specified groups
#' @param diff_df ;the LFC table generated from the 'export_data()' function
#'
#' @return heatmap object
#' @export
#'
#' @examples
#' TRUE
group_analysis <- function(model, groups, diff_df){
  peps <- diff_df$Peptide
  groupHeatmap <- group_heatmap(model$normalized, peps, groups)
  groupHeatmap
}
