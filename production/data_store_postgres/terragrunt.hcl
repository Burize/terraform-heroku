terraform {
  source = "../../modules//data_store_postgres"
}

include {
  path = find_in_parent_folders()
}

dependency "web_server" {
  config_path = "../web_server"
}

inputs = {
  heroku_app_id=dependency.web_server.outputs.heroku_app_id
}