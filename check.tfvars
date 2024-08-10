checkmonitor={
    "check"={
  name                   = "Sample Cert Check Monitor"
  domain                 = "www.example.com"
  locations_public       = ["AP_SOUTH_1"]
  certificate_expiration = "10"
  period                 = "EVERY_6_HOURS"
  status                 = "ENABLED"
  runtime_type           = "NODE_API"
  runtime_type_version   = "16.10"
  tag={
    "tags"={
        key="some_key"
        values=["some_value"]
    }
  }
    }
}