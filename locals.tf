locals {
  name = "demo"
  tags = concat(["terraform-true"],var.tags)
}
