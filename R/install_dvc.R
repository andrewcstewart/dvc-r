#' Install DVC
#'
#' @param with Method to install dvc with: pip, conda, brew, choco, snap.
#' @param user Option for pip.
#' @param remote Depending on the type of the remote storage you plan to use, you might need to install optional dependencies: [s3], [azure], [gdrive], [gs], [oss], [ssh]. Use [all] to include them all.
#'
#' @export
#'
install_dvc <- function(with = "pip", user = FALSE, remote = FALSE) {

  # for use with pip
  if(user) {
    user <- "--user"
  } else {
    user <- ""
  }

  # install additional remote storage dependencies
  if(remote) {
    remote <- glue::glue("[{remote}]")
  } else {
    remote <- ""
  }

  # select install command
  if(with == "pip") {
    cmd <- glue::glue("pip install dvc{remote} {user}")
  } else if (with == "conda") {
    cmd <- "conda install -c conda-forge dvc"
  } else if (with == "brew") {
    cmd <- "brew install dvc"
  } else if (with == "choco") {
    cmd <- "choco install dvc"
  } else if (with == "snap") {
    cmd <- "snap install --classic dvc"
  } else {
    stop(glue::glue("Unknown dvc installer: {with}"))
  }

  # execute install command
  system(cmd)
}
