#' generate_sub_df_kin
#'
#' Creates a dataframe around the subsetted portion of the map.
#'
#' @param kinases ;list of kinases
#' @param percent ;vector of percent values representing the kinase's representation in the subset
#' @param ratio ;vector of ratios showing the subset counts relative to the total counts
#'
#' @return ;subset dataframe for stacking
#' @family ;processing functions
#' @export
#'
#' @examples
#' TRUE
generate_sub_df_kin <- function(kinases, percent, ratio){
  df <- data.frame(kinases, percent, ratio)%>%
    dplyr::mutate(group = "sub_fraction")%>%
    dplyr::mutate(sort_by = "percent")%>%
    dplyr::rename(percent = percent)%>%
    dplyr::mutate(label = ratio)
  df2 <- subset(df, select = -c(ratio))
  df2
}
