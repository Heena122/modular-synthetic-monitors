variable "account_id" {
  type = number
}
variable "api_key" {
  type = any
}
variable "region" {
  type = string
}
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