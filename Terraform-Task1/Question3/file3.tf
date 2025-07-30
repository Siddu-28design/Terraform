resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "This is content from file1.tf"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "This is content from file2.tf"
}

resource "local_file" "file3" {
  filename = "file3.txt"
  content  = "This is content from file3.tf"
}

