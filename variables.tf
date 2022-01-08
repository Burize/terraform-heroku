variable heroku_app_name {
  type = string
  description = "Heroku app name"
}

variable google_project_id {
  type = string
  description = "ID of Google Project which contains bucket for terraform remote state"
}

variable gcs_bucket_name {
  type = string
  description = "Name of GCS bucket for terraform remote state"
}

variable django_settings_module {
  type = string
  description = "Path to django setting module"
}