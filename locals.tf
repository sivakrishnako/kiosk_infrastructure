locals {
  local_data   = jsondecode(file("${path.module}/variables.tfvars.json"))
}
