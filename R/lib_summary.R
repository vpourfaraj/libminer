#' Provide the number of R Packages
#'
#' @return a data.frame  of R packages
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function() {
  pkgs <- utils::installed.packages() #what packages are installed on our system
  pkg_tbl <- table(pkgs[, "LibPath"]) #summarizes the number of rows
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) #turn to df
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
