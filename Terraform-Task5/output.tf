output "string_example" {
  value = random_string.random_str.result
}

output "number_example" {
  value = random_integer.random_num.result
}

output "bool_example" {
  value = local.is_enabled
}

output "list_example" {
  value = local.list_output
}

output "map_example" {
  value = local.example_map
}

output "object_example" {
  value = local.example_object
}

output "tuple_example" {
  value = local.example_tuple
}

