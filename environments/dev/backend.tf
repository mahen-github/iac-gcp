terraform {
  backend "gcs" {
    prefix = "env/dev"
    bucket = "data-proc-poc-tfstate"
  }
}
