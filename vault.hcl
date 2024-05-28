ui = true

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = 1
}

storage "postgresql" {
  connection_url = "postgresql://vault:vault@postgres:5432/vault"
}

api_addr = "http://0.0.0.0:8200"

disable_mlock = "true"

log_level = "debug"
