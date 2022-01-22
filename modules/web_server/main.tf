provider "heroku" {}

resource "heroku_app" "app" {
  name   = var.heroku_app_name
  region = "us"
  stack  = "heroku-20"

  buildpacks = [
    "https://github.com/heroku/heroku-buildpack-python",
    "https://github.com/heroku/heroku-buildpack-nginx.git",
    "https://github.com/DataDog/heroku-buildpack-datadog.git",
  ]

}

resource "heroku_app_feature" "runtime_dyno_metadata" {
  app  = heroku_app.app.id
  name = "runtime-dyno-metadata"
}

resource "heroku_drain" "drain" {
  app = heroku_app.app.name
  url = "https://http-intake.logs.${var.datadog_site}/api/v2/logs/?dd-api-key=${var.datadog_api_key}&ddsource=heroku&env=${var.environment}&service=${heroku_app.app.name}&host=heroku"
}
