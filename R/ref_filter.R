#' ref_filter
#'
#' Filters out refrence peptides.
#'
#' @param peptides ;a list of peptides
#'
#' @return a vector of filtered peptides
#' @family processing function
#' @export
#'
#' @examples
#' TRUE
ref_filter <- function(peptides){
  new_pep <- peptides[!grepl("^#REF#", peptides)]
  new_pep <- new_pep[!new_pep%in%c("pVASP_150_164", "pTY3H_64_78", "ART_025_CXGLRRWSLGGLRRWSL",
                                   "pVASP_150_164", "pTY3H_64_78", "ART_025_CXGLRRWSLGGLRRWSL",
                                   "EFS_246_258_Y253F","ART_004_EAIYAAPFAKKKXC","ART_003_EAI(pY)AAPFAKKKXC")]
  new_pep
}
