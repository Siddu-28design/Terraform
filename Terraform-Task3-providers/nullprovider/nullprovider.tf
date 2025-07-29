terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "<= 2.8"
    }
  }
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello from null provider > null.txt"
  }
}

