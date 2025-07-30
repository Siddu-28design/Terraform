variable "file_string" {
  type    = string
  default = "my_string_file.txt"
}

variable "file_bool" {
  type    = bool
  default = true
}

variable "file_number" {
  type    = number
  default = 42
}

variable "file_list" {
  type    = list(string)
  default = ["list_file.txt", "unused.txt"]
}

variable "file_map" {
  type = map(string)
  default = {
    key1 = "map_file.txt"
    key2 = "another_file.txt"
  }
}

variable "file_tuple" {
  type    = tuple([string, number, bool])
  default = ["tuple_file.txt", 100, false]
}

variable "file_set" {
  type    = set(string)
  default = ["a", "b", "c", "a"] # duplicate 'a' will be removed in the set
}

variable "file_object" {
  type = object({
    name = string
    id   = number
  })
  default = {
    name = "object_file.txt"
    id   = 101
  }
}
