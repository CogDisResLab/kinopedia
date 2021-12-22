#' get_counts_kin
#'
#' Counts the number of times a paticular kianse appears in a mapping file.
#'
#' @param df ;a dataframe to get the counts from
#' @param kinases ;list of kinases
#'
#' @return ;integer vector of kinase counts
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
get_counts_kin <- function(df, kinases){
  counts <- list()
  for(i in kinases){
    dummy <- df%>%
      dplyr::filter(Kinase %in% i)
    foo <- dummy$Kinase
    counts <- append(counts, length(foo))
  }
  counts <- unlist(counts)
  counts
}
