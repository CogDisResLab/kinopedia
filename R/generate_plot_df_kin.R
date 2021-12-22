#' generate_plot_df_kin
#'
#' Creates a sorted dataframe used for the coverage plot
#'
#' @param kinases ;list of kinases of interest
#' @param data ;data to pull from
#'
#' @return sorted dataframe
#' @export
#'
#' @examples
#' TRUE
generate_plot_df_kin <- function(kinases, data){
  sub_perc <- data$sub_perc
  total_perc <- data$all_perc
  ratio <- data$ratio
  df_sub <- generate_sub_df_kin(kinases, percent = sub_perc, ratio)
  df_all <- generate_total_df_kin(kinases, percent = total_perc)
  data <- rbind(df_sub, df_all)
  data <- data%>%
    dplyr::arrange(-sort_by)
  data
}
