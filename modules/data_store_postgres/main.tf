provider "heroku" {}

resource "heroku_addon" "postgres" {
  app  = var.heroku_app_id
  plan = "heroku-postgresql:hobby-dev"
}