 account_id = 4438263
api_key = "NRAK-0L16I8F2GHN8C3YTNELXKYB15QU"
region = "US"

 scriptbrowserr = {
    "scriptbrowserr-1"= {
  status           = "ENABLED"
  name             = "script_monitor"
  type             = "SCRIPT_BROWSER"
  locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
  period           = "EVERY_DAY"
  enable_screenshot_on_failure_and_script = false
  script = "$browser.get('https://one.newrelic.com')"

  runtime_type_version = "100"
  runtime_type         = "CHROME_BROWSER"
  script_language      = "JAVASCRIPT"

#   tag {
#     key    = "some_key"
#     values = ["some_value"]
#   }
    }
 }
 
