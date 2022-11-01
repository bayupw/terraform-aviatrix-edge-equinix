resource "time_sleep" "this" {
  count = var.update_cloud_init ? 1 : 0

  create_duration = "3s" // wait for cloud-init.txt download to complete
  depends_on      = [aviatrix_edge_spoke.this]
}

resource "null_resource" "copy" {
  count = var.backup_cloud_init ? 1 : 0

  provisioner "local-exec" {
    command     = "cp ${path.cwd}/${local.cloud_init_filename} ${path.cwd}/${local.cloud_init_filename}.original"
    interpreter = ["bash", "-c"]
  }

  depends_on = [time_sleep.this]
}

resource "null_resource" "update" {
  count = var.update_cloud_init ? 1 : 0

  provisioner "local-exec" {
    command     = "${path.module}/update-cloud-init.sh ${path.cwd}/${local.cloud_init_filename}"
    interpreter = ["bash", "-c"]
  }

  depends_on = [null_resource.copy]
}

locals {
  cloud_init_filename = "${var.gw_name}-${var.site_id}-cloud-init.txt"
}