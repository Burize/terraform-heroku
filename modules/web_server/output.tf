output "web_url" {
  description = "URL that the app can be accessed at"
  value       = heroku_app.app.web_url
}

output "heroku_app_id" {
  description = "Heroku app ID"
  value       = heroku_app.app.id
}