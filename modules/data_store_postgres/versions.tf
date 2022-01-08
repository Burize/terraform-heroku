terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 4.6.0"
    }
  }

  required_version = ">= 1.1.2"
}
