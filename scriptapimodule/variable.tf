variable "account_id" {
  type = number
}
variable "api_key" {
  type = any
}
variable "region" {
  type = string
}

variable "scriptapii" {
  type = map(object({
    name = string
    status=string
    type=string
    period=string
    file_path=string
    locations_public=list(string)
    runtime_type= string
    runtime_type_version= string
    script_language=string

  }))
}