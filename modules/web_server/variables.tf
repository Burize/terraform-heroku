variable heroku_app_name {
  type = string
  description = "Heroku app name"
}

variable django_settings_module {
  type = string
  description = "Path to django setting module"
}

variable heroku_config_vars {
  description = "Extra heroku config variables"
  type        = map(string)
  default     = {}
}
