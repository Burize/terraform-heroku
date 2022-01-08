provider "heroku" {}

resource "heroku_app" "app" {
  name   = var.heroku_app_name
  region = "us"
  stack  = "heroku-20"

  buildpacks = [
    "https://github.com/heroku/heroku-buildpack-python",
    "https://github.com/heroku/heroku-buildpack-nginx.git",
  ]

}

resource "heroku_addon" "postgres" {
  app  = heroku_app.app.id
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_app_feature" "runtime_dyno_metadata" {
  app  = heroku_app.app.id
  name = "runtime-dyno-metadata"
}