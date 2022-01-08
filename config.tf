locals {
  config_vars = {
      DJANGO_SETTINGS_MODULE = var.django_settings_module
    }
  }

resource "heroku_app_config_association" "app_config" {
  app_id = heroku_app.app.id
  vars = local.config_vars
}