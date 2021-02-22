#' Initialize a DVC project.
#'
#' Initialize DVC in the current directory. Expects directory
#' to be a Git repository unless --no-scm option is specified.
#' Documentation: <https://man.dvc.org/init>
#'
#' @param repo Path to root of repository (project root by default)
#'
#' @export
use_dvc <- function(repo = here::here()) {

  # Check if in git repo
  if(git2r::in_repository()) {

    # Initialize dvc
    cmd <- "dvc init"
    system(cmd)

    ## Add file and commit
    git2r::add(repo, fs::path(repo,".dvc/.gitignore"))
    git2r::add(repo, fs::path(repo,".dvc/config"))
    git2r::commit(repo, "Initialize DVC")
  }
  else {
    message("No scm detected.")
  }
}
