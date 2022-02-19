data "template_file" "json" {
  template = file("template.json.tpl")

  vars = {
    age    = 76
    eye    = "green"
    name   = "Toguro"
    gender = "timido"
  }
}

data "archive_file" "json" {
  type        = local.file_ext
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = "${local.object_name}.json"
  }
}
