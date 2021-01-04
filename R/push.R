#' Upload tracked files or directories to remote storage.
#'
#' @export
push <- function() {

  cmd <- "dvc push"
  system(cmd)
}
