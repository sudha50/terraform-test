terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sudha-org"
    workspaces {
      name = "terraform-test"
    }
  }
}
resource "random_id" "my_id" {
  byte_length = var.length
}

# full object
output "my_id" {
    value = random_id.my_id
}