#' Add a new data remote.
#'
#' @param name Name of the remote
#' @param url URL. See full list of supported urls at <https://man.dvc.org/remote>
#' @param default Set as default remote.
#' @param repo Path to root of repository (project root by default)
#'
#' @export
#'
remote_add <- function(name, url, default=TRUE, repo = here::here()) {

  cmd = glue::glue("dvc remote add {ifelse(default,'-d','')} {name} {url}")
  system(cmd)

  git2r::add(repo, fs::path(repo, ".dvc/config"))
  git2r::commit(repo, "Configure remote storage")
}
