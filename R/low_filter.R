#' low_filter
#'
#'Filters out peptides with a low signal.
#'
#' @param data ;data_pw_100 file from KRSA
#' @param threshold ;signal threshold value
#' @param groups ;user-defined group comparison
#'
#' @return ;filtered dataframe
#' @export
#'
#' @examples
#' TRUE
low_filter <- function(data, threshold, groups){
  p <- data%>%
    dplyr::filter(Group %in% groups)%>%
    dplyr::select(-Group)%>%
    tidyr::pivot_wider(names_from = SampleName, values_from = Signal)%>%
    dplyr::filter_at(vars(-Peptide), dplyr::all_vars(.>=threshold))%>%
    dplyr::pull(Peptide)
  p
}
