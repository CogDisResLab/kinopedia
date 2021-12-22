#' swoosh_plot_kin
#'
#' Wrapper function that sets up the plot dataframe and creates the plot from it.
#'
#' @param kinases ;list of kinases
#' @param data ;data frame to work off of
#'
#' @return the coverage plot
#' @family processing function
#' @export
#'
#' @examples
#' TRUE
swoosh_plot_kin <- function(kinases, data){
  data <- generate_plot_df_kin(kinases, data)
  plot <- make_cov_plot_kin(data)
  plot
}
