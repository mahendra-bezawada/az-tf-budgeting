locals {
  settings_file = file("./settings.yaml")
  settings      = yamldecode(local.settings_file)

}
