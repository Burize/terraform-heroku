terraform {
  source = "../../modules//web_server"
}

include {
  path = find_in_parent_folders()
}


inputs = {
  heroku_app_name="${get_env("HEROKU_APP_NAME")}-prod"
  django_settings_module="template.settings.prod"
  heroku_config_vars={
    PRODUCTION: true,
  }
}