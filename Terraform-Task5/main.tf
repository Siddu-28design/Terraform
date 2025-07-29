terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}

provider "random" {}

# String
resource "random_string" "random_str" {
  length  = 10
  special = false
}

# Number (using random_integer)
resource "random_integer" "random_num" {
  min = 100
  max = 999
}

# Boolean (we'll derive it from a random integer)
locals {
  is_enabled = random_integer.random_num.result % 2 == 0 ? true : false
}

# List of strings (simulate multiple strings)
resource "random_string" "list_of_strs" {
  count   = 3
  length  = 6
  special = false
}

# Map of key-values
locals {
  example_map = {
    id      = random_string.random_str.result
    enabled = local.is_enabled
    number  = random_integer.random_num.result
  }
}

# Object with multiple types
locals {
  example_object = {
    name   = "Resource-${random_string.random_str.result}"
    active = local.is_enabled
    value  = random_integer.random_num.result
    tags   = ["tag1", "tag2"]
  }
}

# Tuple (ordered collection of mixed types)
locals {
  example_tuple = [
    random_string.random_str.result,
    random_integer.random_num.result,
    local.is_enabled
  ]
}

# List of strings from resource
locals {
  list_output = [for s in random_string.list_of_strs : s.result]
}

