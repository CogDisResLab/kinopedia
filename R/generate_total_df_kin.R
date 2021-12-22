#' generate_total_df_kin
#'
#' Creates a dataframe around the entirety of the map
#'
#' @param kinases ;list of kinases of intrest
#' @param percent ;vector of percents that represent the percent coverage in the total fraction
#'
#' @return a dataframe representing the total fraction in the stack
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
generate_total_df_kin <- function(kinases, percent){
  df <- data.frame(kinases, percent)%>%
    dplyr::mutate(group = "total_fraction")%>%
    dplyr::rename(percent = percent)%>%
    dplyr::mutate(sort_by = 0)
  df
}
