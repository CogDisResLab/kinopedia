#' build_kinase
#'
#' Constructs a kinase-class object using a set of defaults.
#'
#' @param data ;data_pw_100 object from KRSA
#' @param model ;data_modeled file from KRSA
#'
#' @return ;kinase-class object
#' @family ;processing functions
#' @export
#'
#' @examples
#' TRUE
build_kinase <- function(data, model){
  kin <- new("kinase",
             data = data,
             model = model,
             comp = list(comp1 = c("A", "CTL"),
                         comp2 = c("B", "CTL"),
                         comp3 = c("C", "CTL")),
             groups = c("A", "B", "C"),
             ctl = "CTL",
             threshold = 4,
             GC = c("A", "CTL")
             )
  kin
}
