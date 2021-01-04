#' Initialize a DVC project.
#'
#' @export
use_dvc <- function() {

  # Initialize dvc
  cmd <- "dvc init"
  system(cmd)

  ## Add file and commit
  git2r::add(repo = here::here(), here::here(".dvc/.gitignore"))
  git2r::add(repo = here::here(), here::here(".dvc/config"))
  commit(repo = here::here(), "Initialize DVC")
}
