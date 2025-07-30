resource "local_file" "fruit_file" {
  for_each = var.fruits
  filename = "${path.module}/${each.key}.txt"
  content  = "The color of ${each.key} is ${each.value}"
}

