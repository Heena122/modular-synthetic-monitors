variable "account_id" {
  type = number
}
variable "api_key" {
  type = any
}
variable "region" {
  type = string
}
variable "simplebrowser" {
  type = map(object({
    name = string
    status=string
    period=string
    uri=any
    type=string
    locations_public=list(string)
  }))
}

variable "brokenlink" {
  type = map(object({
    name = string
    status=string
    period=string
    uri=any
    locations_public=list(string)
    runtime_type= string
    runtime_type_version= string

  }))
}

variable "scriptbrowserr" {
  type = map(object({
    name = string
    status=string
    type=string
    period=string
    enable_screenshot_on_failure_and_script = bool
    script = string
    locations_public=list(string)
    runtime_type= string
    runtime_type_version= string
    script_language=string

  }))
}

# variable "scriptapii" {
#   type = map(object({
#     name = string
#     status=string
#     type=string
#     period=string
#     file_path = string
#     locations_public=list(string)
#     runtime_type= string
#     runtime_type_version= string
#     script_language=string

#   }))
# }

variable "stepmonitorr" {
  type = map(object({
    name = string
    status=string
    period=string
    enable_screenshot_on_failure_and_script = bool
    locations_public=list(string)
    runtime_type= string
    runtime_type_version= string
    steps=map(object({
    ordinal = number
    type    = string
    values  = list(string)
    }))
  }))
  
}

variable "checkmonitor" {
  type = map(object({
     name = string
     domain=string
     certificate_expiration=string
    status=string
    period=string
    locations_public=list(string)
    runtime_type= string
    runtime_type_version= string
    tag=map(object({
      key = string
      values=list(string)
    }))
  }))
  
}
 
 