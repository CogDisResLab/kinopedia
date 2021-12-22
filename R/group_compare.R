#' group_compare
#'
#' Generates a peptide list from the indicated groups at the indicated threshold.
#'
#' @param groups ;user-defined groups
#' @param data ;data_pw_100 from KRSA
#' @param model ;the model file from KRSA
#' @param threshold ;user-defined threshold
#'
#' @return vector of peptides
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
group_compare <- function(groups, data, model, threshold){
  peps <- mega_filter(data = data, model = model, signal_threshold = 4,
                      r2_threshold = 0.9, groups = groups)
  diff_df <- get_LFC(model$scaled, groups = groups, peps)
  diff_df_fil <- diff_df%>%
    dplyr::filter(LFC >= threshold)
  pep_list <- diff_df_fil$Peptide
  pep_list
}
