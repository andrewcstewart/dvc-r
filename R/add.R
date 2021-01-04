#' Track data files or directories with DVC.
#'
#' Documentation: <https://man.dvc.org/add>
#'
#' @param path Input files/directories to add.
#' @param repo Path to root of repository (project root by default)
#'
#' @export
add <- function(path, repo = here::here()) {
  cmd <- glue::glue("dvc add {path}")
  system(cmd)

  ## Add file and commit
  git2r::add(repo, glue::glue("{path}.xml.dvc"))
  git2r::add(repo, fs::path(fs::path_dir(path), ".gitignore"))
  git2r::commit(repo, "Add raw data")
}
