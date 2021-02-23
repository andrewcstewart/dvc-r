#' Initialize a DVC project.
#'
#' Initialize DVC in the current directory. Expects directory
#' to be a Git repository unless --no-scm option is specified.
#' Documentation: <https://man.dvc.org/init>
#'
#' @param repo Path to root of repository (project root by default)
#' @param git_commit Include git commits? (default: TRUE)
#' @param git_message Git commit message.
#'
#' @export
use_dvc <- function(repo = here::here(), git_commit = TRUE, git_message = "Initialize DVC") {

  # Check if in git repo
  if(git2r::in_repository()) {

    # Initialize dvc
    cmd <- "dvc init"
    system(cmd)

    ## Add file and commit
    if(git_commit) {
      git2r::add(repo, fs::path(repo,".dvc/.gitignore"))
      git2r::add(repo, fs::path(repo,".dvc/config"))
      git2r::commit(repo, git_message)
    }
  }
  else {
    message("No scm detected.")
  }
}
