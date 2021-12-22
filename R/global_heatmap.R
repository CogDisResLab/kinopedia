#' global_heatmap
#'
#' Makes a heatmap that shows all the comparisons.
#'
#' @param data ;one of the dataframes from the KRSA model
#' @param peptides ;list of peptides
#'
#' @return global heatmap object
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
global_heatmap <- function(data, peptides){
  mat <- data%>%
    dplyr::filter(Peptide %in% peptides)%>%
    dplyr::select(Peptide, Group, slope)%>%
    tidyr::spread(key = Group, value = slope)%>%
    column_to_rownames("Peptide")%>%
    as.matrix()
  q <- plotly::plot_ly(x = colnames(mat), y = rownames(mat), z = mat, type = 'heatmap')%>%
                         layout(margin = list(l = 120))
  q
}
