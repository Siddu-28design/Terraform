resource "local_file" "city_file" {
  count    = length(var.cities)
  filename = "${path.module}/${var.cities[count.index]}.txt"
  content  = "City name: ${var.cities[count.index]}"
}

