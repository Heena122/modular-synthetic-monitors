resource "newrelic_synthetics_monitor" "monitor" {
  for_each = var.simplebrowser
  status           = each.value.status
  name             = each.value.name
  period           = each.value.period
  uri              =each.value.uri
  type             = each.value.type
  locations_public =each.value.locations_public
  
#   custom_header {
#     name  = "some_name"
#     value = "some_value"
#   }

  enable_screenshot_on_failure_and_script = true
#   validation_string                       = "success"
#   verify_ssl                              = true
  runtime_type                            = "CHROME_BROWSER"
  runtime_type_version                    = "100"
  script_language                         = "JAVASCRIPT"
  device_type                             = "MOBILE"
  device_orientation                      = "LANDSCAPE"

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}

resource "local_file" "script" {
 source   = "${path.module}/script.js"  # Corrected line
  filename = "${path.module}/script.js"
}
resource "newrelic_synthetics_script_monitor" "monitor" {
  status               = "ENABLED"
  name                 = "script_api_monitor"
  type                 = "SCRIPT_API"
  locations_public     = ["AP_SOUTH_1", "AP_EAST_1"]
  period               = "EVERY_6_HOURS"

  script               = local_file.script.content

  script_language      = "JAVASCRIPT"
  runtime_type         = "NODE_API"
  runtime_type_version = "16.10"

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}


