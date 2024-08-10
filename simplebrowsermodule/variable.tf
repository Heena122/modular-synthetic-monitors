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
 