terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "<= 2.8"
    }
  }
}

resource "random_string" "token" {
  length  = 8
  special = false
}

output "my_token_output" {
  value = random_string.token.result
}

