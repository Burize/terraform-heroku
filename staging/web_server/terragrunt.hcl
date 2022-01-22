terraform {
  source = "../../modules//web_server"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  heroku_app_name="${get_env("HEROKU_APP_NAME")}-staging"
  django_settings_module="template.settings.dev"
  datadog_api_key=get_env("DD_API_KEY")
  environment="staging"
  heroku_config_vars={
    PRODUCTION: false,
  }
}