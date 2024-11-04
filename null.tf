resource "null_resource" "file" {

  provisioner "file" {
    source      = "./yamlBackup.tgz"
    destination = "/tmp/yamlBackup.tgz"
  }

  provisioner "remote-exec" {
    inline = [
      "cd /tmp && tar -xzf yamlBackup.tgz",
      "cd yamlBackup && sh apply.sh"
    ]
  }

  connection {
    type     = "ssh"
    host     = var.remote_host
    user     = var.remote_username
    password = var.remote_password
    #private_key = file("~/.ssh/id_rsa")
  }
}
