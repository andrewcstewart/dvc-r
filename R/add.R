#' Start tracking a file or directory
#'
#' @param path
#' @param repo
#'
#' @return
#' @export
#'
#' @examples
add <- function(path, repo = here::here()) {
  cmd <- glue::glue("dvc add {path}")
  system(cmd)

  ## Add file and commit
  git2r::add(repo, glue::glue("{path}.xml.dvc"))
  git2r::add(repo, ps::path(fs::path_dir(path), ".gitignore"))
  commit(repo = here::here(), "Add raw data")
}
