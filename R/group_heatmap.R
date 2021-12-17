#' group_heatmap
#'
#' Makes a heatmap for a specific group comparison.
#'
#' @param data ;one of the dataframes from the KRSA model object
#' @param peptides ;list of peptides
#' @param groups ;user-specified groups
#'
#' @return group heatmap object
#' @export
#'
#' @examples
#' TRUE
group_heatmap <- function(data, peptides, groups){
  mat <- data%>%
    dplyr::filter(Peptide %in% peptides)%>%
    dplyr::filter(Group %in% groups)%>%
    dplyr::select(Peptide, SampleName, slope)%>%
    tidyr::spread(key = SampleName, value = slope)%>%
    column_to_rownames("Peptide")%>%
    as.matrix()
  p <- plotly::plot_ly(x = colnames(mat), y = rownames(mat), z = mat, type = "heatmap")%>%
    layout(margin = list(l = 120))
}
