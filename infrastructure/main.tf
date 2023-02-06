terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sudha-org"
    workspaces {
      name = "terraform-test"
    }
  }
}
resource "random_id" "rng" {
  keepers = {
    first = "${timestamp()}"
  }     
  byte_length = var.length
}

# full object
output "rng" {
    value = random_id.rng.id
}
