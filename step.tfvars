  account_id = 4438263
api_key = "NRAK-0L16I8F2GHN8C3YTNELXKYB15QU"
region = "US"
stepmonitorr={
  "steps"={
    name                                    = "Sample Step Monitor"
    enable_screenshot_on_failure_and_script = true
    locations_public                        = ["US_EAST_1", "US_EAST_2"]
    period                                  = "EVERY_6_HOURS"
    status                                  = "ENABLED"
    runtime_type                            = "CHROME_BROWSER"
    runtime_type_version                    = "100"
    steps={
      "step1"={
      ordinal                                 = 0
      type                                    = "NAVIGATE"
      values                                  = ["https://www.newrelic.com"]
      },
      "step2"={
      ordinal                                 = 0
      type                                    = "NAVIGATE"
      values                                  = ["https://www.google.com"]
      },
    }
  

  }
}
 