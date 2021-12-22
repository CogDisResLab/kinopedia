#' name_eval
#'
#' Sets sample names during the KRSA process to a standard format based on their corresponding array values.
#'
#' @param data ;a dataframe consisting of the combined SigmBg and SigSat files
#' @param vec ;a vector of names to replace the original sample names
#'
#' @return ;a modified dataframe with the replaced sample names
#' @family ;processing functions
#' @export
#'
#' @examples
#' TRUE
name_eval <- function(data, vec){
  d1 <- data%>%
    dplyr::filter(Array == "A1")%>%
    dplyr::mutate(SampleName = vec[1])
  d2 <- data%>%
    dplyr::filter(Array == "A2")%>%
    dplyr::mutate(SampleName = vec[2])
  d3 <- data%>%
    dplyr::filter(Array == "A3")%>%
    dplyr::mutate(SampleName = vec[3])
  d4 <- data%>%
    dplyr::filter(Array == "A4")%>%
    dplyr::mutate(SampleName = vec[4])
  df <- rbind(d1, d2, d3, d4)
  df
}
