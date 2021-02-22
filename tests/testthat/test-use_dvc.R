test_that("basic test", {
  # instlal dvc
  dvc::install_dvc()

  # create temp directory
  tmp <- fs::dir_create(fs::file_temp())
  withr::local_dir(tmp)
  git2r::init()
  git2r::config(user.name = "testthta", user.email = "test@that.org")
  expect_true(git2r::in_repository())

  # test init
  dvc::use_dvc(repo = getwd())

  # test dvc add
  write.csv2(x = mtcars, file = "mtcars.csv")
  dvc::add(path = "mtcars.csv", repo = getwd())

  # test remote
  tmp_remote <- fs::dir_create(fs::file_temp())
  dvc::remote_add(name = "myremote", repo = getwd(), url = tmp_remote)
  dvc::push()

  # remove the directory
  fs::dir_delete(tmp)
  fs::dir_delete(tmp_remote)
})
