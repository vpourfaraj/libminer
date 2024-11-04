lib_summary <- function() {
  pkgs <- utils::installed.packages() #what packages are installed on our system
  pkg_tbl <- table(pkgs[, "LibPath"]) #summarises the number of rows
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE) #trun to df
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
