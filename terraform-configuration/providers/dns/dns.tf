resource "dns_a_record_set" "lb" {
  zone = "rodce-adm.pp.ua."
  name = "lb"
  addresses = [
    "192.168.31.113",
  ]
  ttl = 300
}

resource "dns_a_record_set" "static" {
  zone = "rodce-adm.pp.ua."
  name = "static"
  addresses = [
    "192.168.31.148",
  ]
  ttl = 300
}

resource "dns_a_record_set" "minio-a" {
  zone = "rodce-adm.pp.ua."
  name = "minio-a"
  addresses = [
    "192.168.31.111",
  ]
  ttl = 300
}
resource "dns_a_record_set" "minio-b" {
  zone = "rodce-adm.pp.ua."
  name = "minio-b"
  addresses = [
    "192.168.31.112",
  ]
  ttl = 300
}
resource "dns_a_record_set" "minio" {
  zone = "rodce-adm.pp.ua."
  name = "minio"
  addresses = [
    "192.168.31.113",
  ]
  ttl = 300
}
resource "dns_a_record_set" "gitlab" {
  zone = "rodce-adm.pp.ua."
  name = "gitlab"
  addresses = [
    "192.168.31.113",
  ]
  ttl = 300
}

resource "dns_a_record_set" "vault" {
  zone = "rodce-adm.pp.ua."
  name = "vault"
  addresses = [
    "192.168.31.111",
  ]
  ttl = 300
}

resource "dns_a_record_set" "vault-b" {
  zone = "rodce-adm.pp.ua."
  name = "vault-b"
  addresses = [
    "192.168.31.112",
  ]
  ttl = 300
}

resource "dns_a_record_set" "dynamodb" {
  zone = "rodce-adm.pp.ua."
  name = "dynamodb"
  addresses = [
    "192.168.31.113",
  ]
  ttl = 300
}