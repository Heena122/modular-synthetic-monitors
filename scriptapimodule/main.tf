resource "local_file" "script" {
    for_each = var.scriptapii
 source   = "${path.module}/${each.value.file_path}"  # Corrected line
  filename = "${path.module}/${each.value.file_path}"
}
resource "newrelic_synthetics_script_monitor" "monitor" {
    for_each = var.scriptapii
  status               = each.value.status
  name                 = each.value.name
  type                 = each.value.type
  locations_public     = each.value.locations_public
  period               = each.value.period
  # file_path =            local_file.file_path[each.value].content
  script               = local_file.file_path[each.key].content

  script_language      = each.value.script_language
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version

#   tag {
#     key    = "some_key"
#     values = ["some_value"]
#   }
}
