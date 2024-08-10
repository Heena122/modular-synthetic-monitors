variable "account_id" {
  type = number
}
variable "api_key" {
  type = any
}
variable "region" {
  type = string
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
 