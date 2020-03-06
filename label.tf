module "label" {
  source             = "git::https://github.com/Callumccr/tf-mod-label.git?ref=master"
  context            = var.context
  namespace          = var.namespace
  environment        = var.environment
  name               = var.name
  attributes         = [""]
  delimiter          = "-"
  additional_tag_map = {} /* Additional attributes (e.g. 1) */
  label_order        = ["namespace", "environment", "name", "attributes"]
}
