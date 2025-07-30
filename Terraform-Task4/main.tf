# Use random provider
provider "random" {}

# random_id resource using variable from tfvars
resource "random_id" "from_tfvars" {
  byte_length = var.byte_length_from_tfvars
}

# random_pet resource using CLI var
resource "random_pet" "from_cli" {
  length    = var.pet_length_from_cli
}

# random_string using env var
resource "random_string" "from_env" {
  length  = var.str_length_from_env
  upper   = true
  lower   = true
  number  = true
  special = false
}
output "id_from_tfvars" {
  value = random_id.from_tfvars.hex
}

output "pet_from_cli" {
  value = random_pet.from_cli.id
}

output "string_from_env" {
  value = random_string.from_env.result
}

