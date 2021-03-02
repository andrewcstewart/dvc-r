#' Download tracked files or directories from remote storage.
#'
#' Documentation: <https://man.dvc.org/push>
#'
#' @param targets Limit command scope to these tracked files/directories, .dvc files, or stage names.
#' @param remote Remote storage to pull from.
#'
#' @export
pull <- function(targets = c(), remote = FALSE) {

  # collapse targets
  targets <- paste0(targets, collapse = " ")

  if(remote) {
    remote <- glue::glue("--remote {remote}")
  }

  cmd <- glue::glue("dvc pull {remote} {targets}")
  system(cmd)
}
