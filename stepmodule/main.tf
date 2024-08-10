resource "newrelic_synthetics_step_monitor" "foo" {
  for_each = var.stepmonitorr
  name                                    = each.value.name
  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  locations_public                        = each.value.locations_public
  period                                  = each.value.period
  status                                  = each.value.status
  runtime_type                            = each.value.runtime_type
  runtime_type_version                    = each.value.runtime_type_version
  dynamic "steps" {
    for_each = each.value.steps
    content{
      ordinal = steps.value.ordinal
    type    =steps.value.type
    values  = steps.value.values
    }
  }
  # steps {
  #   ordinal = each.value.steps.ordinal
  #   type    = each.value.steps.type
  #   values  = each.value.steps.values
  # }
  #   steps {
  #   ordinal = stepss.value.ordinal
  #   type    = each.value.steps.type
  #   values  = each.value.steps.values
  # }
  # tag {
  #   key    = "some_key"
  #   values = ["some_value"]
  # }
}