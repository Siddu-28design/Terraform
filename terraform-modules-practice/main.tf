module "m1" {
source = "./config"
f1 = "test.txt"
c1 = "this is my test file from root with module1"
}

module "m2" {
source = "./config"
f1 = "123.txt"
c1 = "this is my test file from root with module2"
}

module "m3" {
source = "git::https://github.com/Siddu-28design/Terraform-Adisir.git"
}



