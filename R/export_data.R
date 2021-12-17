#' export_data
#'
#' generates a LFC table for the given group comparison at the specified threshold
#'
#' @param groups ;user-defined group
#' @param data ;data_pw_100 from KRSA
#' @param model ;the model file from KRSA
#' @param threshold ;user-defined threshold
#'
#' @return data frame of peptide names and LFC values
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
export_data <- function(groups, data, model, threshold){
  peps <- mega_filter(data = data, model = model,
                      groups = groups, signal_threshold = 4,
                      r2_threshold = 0.9)
  diff_df <- get_LFC(model$scaled, groups = groups, peps)
  diff_df_fil <- diff_df%>%
    dplyr::filter(LFC >= threshold)
  diff_df_fil
}
