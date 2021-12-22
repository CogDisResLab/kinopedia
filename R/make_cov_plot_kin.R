#' make_cov_plot_kin
#'
#' Makes the coverage plot itself
#'
#' @param data ;dataframe to use for the plot.
#'
#' @return
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
make_cov_plot_kin <- function(data){
  plot <- data%>%
    dplyr::mutate(kinases = fct_reorder(kinases, sort_by))%>%
    ggplot(aes(x = kinases, y = percent, fill = group))+
    geom_bar(stat = 'identity')+
    theme(axis.text.x = element_blank())+
    ggtitle("Coverage Plot")+
    geom_text(aes(label = label), size = 3, position = position_stack(vjust = 0.5), angle = 90)
  plot
}
