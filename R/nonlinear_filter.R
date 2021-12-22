#' nonlinear_filter
#'
#' Filters out peptides that do not fit the model.
#'
#' @param data ;dataframe from the model file from KRSA
#' @param threshold ;r-seq threshold
#' @param groups ;user-defined groups
#'
#' @return a filtered dataframe
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
nonlinear_filter <- function(data, threshold, groups){
  p <- data%>%
    dplyr::filter(Group %in% groups)%>%
    dplyr::select(SampleName, Peptide, r.seq)%>%
    tidyr::spread(SampleName, r.seq)%>%
    dplyr::filter_at(vars(-Peptide), dplyr::all_vars(. >= threshold))%>%
    dplyr::pull(Peptide)
}
