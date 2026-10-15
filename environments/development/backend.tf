terraform {
  backend "gcs" {
    bucket = "newhostproject-508208-tfstate"
    prefix = "poc/development"
  }
}
