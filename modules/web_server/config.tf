locals {
  config_vars = {
      DJANGO_SETTINGS_MODULE = var.django_settings_module
      DD_ENV                 = var.environment
      DD_LOGS_INJECTION      = true
      DD_DYNO_HOST           = true
      DD_LOG_LEVEL           = "WARN"
      DD_TRACE_ENABLED       = var.datadog_trace_enabled
      DD_PROFILING_ENABLED   = var.datadog_profiling_enabled
      DD_SITE                = var.datadog_site
      DD_API_KEY             = var.datadog_api_key
      DD_AGENT_MAJOR_VERSION = "7"
    }

  sensitive_vars = {
      DD_API_KEY = var.datadog_api_key
    }

  }

resource "heroku_app_config_association" "app_config" {
  app_id = heroku_app.app.id
  vars = merge(local.config_vars, var.heroku_config_vars)
}