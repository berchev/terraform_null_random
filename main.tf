provider "null" {}

resource "random_string" "mixed" {
  length  = 16
  upper   = true
  lower   = true
  number  = true
  special = false
}

resource "random_string" "numbers" {
  length  = 16
  upper   = false
  lower   = false
  number  = true
  special = false
}

resource "null_resource" "georgiman" {
  triggers {
    build_number = "${random_string.numbers.result}"
  }

  provisioner "local-exec" {
    command = "echo hello ${random_string.mixed.result}"
  }
}
