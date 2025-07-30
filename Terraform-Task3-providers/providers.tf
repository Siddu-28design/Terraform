terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "<= 2.8"
    }
  }
}

resource "local_file" "hello" {
  filename = "hello.txt"
  content  = "Hello from Terraform local provider!"
}

