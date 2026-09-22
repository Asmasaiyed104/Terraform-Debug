resource "terraform_data" "servers" {
  for_each = toset(["web", "api", "worker"])

  input = each.value
}
