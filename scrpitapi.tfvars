scripteapi={ 
    "scrapi"={
 status               = "ENABLED"
  name                 = "script_api_monitor"
  type                 = "SCRIPT_API"
  locations_public     = ["AP_SOUTH_1", "AP_EAST_1"]
  period               = "EVERY_6_HOURS"
  file_path =             "script.js"
  script_language      = "JAVASCRIPT"
  runtime_type         = "NODE_API"
  runtime_type_version = "16.10"

#   tag {
#     key    = "some_key"
#     values = ["some_value"]
#   }
}
}