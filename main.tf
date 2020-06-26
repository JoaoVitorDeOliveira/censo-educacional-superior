// Configure the Google Cloud provider
provider "google" {
 credentials = file("CREDENTIALS_FILE.json")
 project     = "striking-joy-281500"
 region      = "us-west1"
}

resource "google_storage_bucket" "bkt-prd-portfolio-censo-superior-joao-teste" {
  name          = "bkt-prd-portfolio-censo-superior"
}
