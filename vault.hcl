ui = true

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = 1
}

storage "file" {
    path = "/vault/file"
}

api_addr = "http://0.0.0.0:8200"

disable_mlock = "true"

log_level = "debug"
