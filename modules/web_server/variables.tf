variable heroku_app_name {
  type = string
  description = "Heroku app name"
}

variable django_settings_module {
  type = string
  description = "Path to django setting module"
}

variable environment {
  type = string
  description = "Application’s environment"
}

variable "datadog_api_key" {
  description = "Datadog api key"
  type        = string
  default     = null
}

variable "datadog_site" {
  description = "Datadog site"
  type        = string
  default     = 'datadoghq.eu'
}

variable datadog_trace_enabled {
  type = bool
  description = "Need to send log traces to DataDog"
  default="true"
}

variable datadog_profiling_enabled {
  type = bool
  description = "Need to send profiling to DataDog"
  default="true"
}

variable heroku_config_vars {
  description = "Extra heroku config variables"
  type        = map(string)
  default     = {}
}
