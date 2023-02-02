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
  byte_length = 8
}

# full object
output "my_id" {
    value = random_id.my_id
}