// Configure the Google Cloud provider
provider "google" {
 credentials = file("CREDENTIALS_FILE.json")
 project     = var.project_name
 region      = "us-west1"
}

resource "google_storage_bucket" "bkt-prd-portfolio-censo-superior-terraform-teste" {
  name          = var.bkt_name
}

variable "bkt_name" {
    type = string
    description = "Nome do bucket, precisa ser unico"    
}

variable "project_name" {
    type = string
    description = "Nome do projeto gerado pelo gcp"    
}
