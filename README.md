# Infrastructure as code
> Infrastructure as Code (IaC) is the managing and provisioning of infrastructure through code instead of manually

Template/example of IaC for heroku stack: 
- web server: Python+Nginx
- addons: Postgres

for staging/production environments.

Implemented using [Terraform](https://www.terraform.io/)
> Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services

It's better to place each resource as a separate module and use it for a specific environment, which is presented as a separate folder. As result, there are uncoupled configurations for each module, which can be updated/deployed independently.

Because of a lot of boilerplate code, that is needed for Terraform IaC when different environments are implemented, [Terragrunt](https://terragrunt.gruntwork.io/) is used as well.
> Terragrunt is a thin wrapper that provides extra tools for keeping your configurations DRY, working with multiple Terraform modules, and managing remote state.

#### Remote state
Google Cloud Storage is used for storing the state of infrastructure - hence, Google Cloud Platform Project with already created bucket is needed.

#### Environment variables

| Name | Description |
|------|-------------|
|GOOGLE_APPLICATION_CREDENTIALS| Path to json file with a service account key for your GCP (see more information [there](https://cloud.google.com/iam/docs/creating-managing-service-account-keys#iam-service-account-keys-list-console)) |
|GOOGLE_PROJECT_ID| Project ID of GCP |
|GCS_BUCKET_NAME| Name of bucket in GCS |
|HEROKU_EMAIL| Email of heroku account |
|HEROKU_API_KEY| Heroku api key |
|HEROKU_APP_NAME| Heroku app name. It used in webserver module. May not be specified if name is set manually|

- copy `.env.example` to `.env`
- fill `.env` with real values
- run `source .env` to set env variables within bash/console session

_Note: there is `django_settings_module` variable for web_server, adjust it for your project._