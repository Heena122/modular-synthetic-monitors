variable "account_id" {
  type = number
}
variable "api_key" {
  type = any
}
variable "region" {
  type = string
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