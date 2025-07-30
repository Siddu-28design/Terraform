terraform {
  required_version = "<= 2.8"
}

# 1. Resources using one variable of each data type

resource "local_file" "string_file" {
  filename = var.file_string
  content  = "This is string variable content"
}

resource "local_file" "bool_file" {
  filename = tostring(var.file_bool) # convert bool to string for filename
  content  = "This is bool variable content"
}

resource "local_file" "number_file" {
  filename = tostring(var.file_number) # convert number to string
  content  = "This is number variable content"
}

resource "local_file" "list_file" {
  filename = tostring(var.file_list[0])  # first element of the list
  content  = "This is list variable content"
}

resource "local_file" "map_file" {
  filename = var.file_map["key1"]  # value for key1 in map
  content  = "This is map variable content"
}

resource "local_file" "tuple_file" {
  filename = tostring(var.file_tuple[0])  # first element in tuple (string)
  content  = "This is tuple variable content"
}

resource "local_file" "set_file" {
  filename = tostring(length(var.file_set)) # filename as count of set elements (number → string)
  content  = "This is set variable content"
}

resource "local_file" "object_file" {
  filename = var.file_object.name
  content  = "This is object variable content"
}

output "output_string" {
  value       = var.file_string
  description = "String variable value"
}

output "output_bool" {
  value       = var.file_bool
  description = "Boolean variable value"
}

output "output_number" {
  value       = var.file_number
  description = "Number variable value"
}

output "output_list_first_element" {
  value       = var.file_list[0]
  description = "First element of list"
}

output "output_map_key1" {
  value       = var.file_map["key1"]
  description = "Map value at key 'key1'"
}

output "output_tuple_first_element" {
  value       = var.file_tuple[0]
  description = "First element of tuple (string)"
}

output "output_set_elements_count" {
  value       = length(var.file_set)
  description = "Count of unique elements in the set"
}

output "output_object_name" {
  value       = var.file_object.name
  description = "Name field from object"
}
