#' Install DVC
#'
#' @export
#'
install_dvc <- function() {
  cmd <- "pip3 install dvc --user"
  system(cmd)
}
