resource "terraform_data" "example" {
  count = var.server_count

  input = "server-${count.index}"
}
