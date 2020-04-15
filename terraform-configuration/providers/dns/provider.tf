# Configure the DNS Provider
provider "dns" {
  version = "~> 2.2"
  update {
    server        = local.dns_server_ip
    key_name      = local.dns_key_name
    key_algorithm = "hmac-md5"
    key_secret    = "HuO7XHW9y3SCq4SYfz136w=="
  }
}

provider "vault" {
  version = "~> 2.8"
  addres = var.vault_address
}