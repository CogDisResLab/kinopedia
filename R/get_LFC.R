#' get_LFC
#'
#' Generates a LFC table
#'
#' @param data ;the 'scaled' dataframe from the KRSA model file
#' @param groups ;user-defined groups
#' @param peps ;peptide list
#'
#' @return LFC table (dataframe)
#' @family processing functions
#' @export
#'
#' @examples
#' TRUE
get_LFC <- function(data, groups, peps){
  data%>%
    dplyr::filter(Group %in% groups, Peptide %in% peps)%>%
    dplyr::group_by(Peptide, Group)%>%
    dplyr::summarise(slope = mean(slope))%>%
    dplyr::ungroup(.)%>%
    dplyr::group_by(Peptide)%>%
    dplyr::summarise(LFC = slope[Group == groups[1]] - slope[Group == groups[2]])%>%
    dplyr::ungroup(.)
}
