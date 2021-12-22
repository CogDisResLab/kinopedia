#' cov_preprocess_kin
#'
#' Generates the percentage dataframe from a given list of peptides. The dataframe is presented in
#' terms of kinases.
#'
#' @param map ;mapping file
#' @param peps ;list of peptides
#'
#' @return a dataframe detailing percents and ratios
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
cov_preprocess_kin <- function(map, peps){
  sub <- map%>%
    dplyr::filter(Peptides %in% peps)
  kinases <- unique(sub_file$Kinases)
  counts_sub <- get_counts_kin(df = sub, kinases)
  counts_all <- get_counts_kin(df = map, kinases)
  perc_df <- generate_perc_df_kin(kinases, counts_sub, counts_all)
  perc_df
}
