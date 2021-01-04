#' Add a new data remote.
#'
#' @param name Name of the remote
#' @param url URL. See full list of supported urls at <https://man.dvc.org/remote>
#' @param default Set as default remote.
#'
#' @export
#'
remote_add <- function(name, url, default=TRUE) {

  cmd = glue::glue("dvc remote add {ifelse(default,'-d','')} {name} {url}")
  system(cmd)

  git2r::add(repo = here::here(), here::here(".dvc/config"))
  git2r::commit(repo = here::here(), "Configure remote storage")
}
