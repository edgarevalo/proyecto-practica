#Instancia para conectar y correr comandos

/*resource "null_resource" "kubectl-version" {
  ######## CONEXION A LA INSTANCIA #######
  connection {
    type        = "ssh"
    host        = aws_instance.edgar-test.public_ip
    user        = "ec2-user"
    private_key = file(var.key_path)

  }
  ######## INSTALACION DE PAQUETES #######

  provisioner "remote-exec" {
    inline = [
    "sudo yum update -y",
    "sudo yum install docker -y",
    "sudo service docker start",
    "sudo docker pull jenkins/jenkins",
    "sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.12/bin/linux/amd64/kubectl",
    "sudo chmod +x ./kubectl",
    "sudo mv ./kubectl /usr/local/bin/kubectl",
    "sudo /usr/local/bin/kubectl version --client",
    "echo = Installed successfully"
    ]
    }
  depends_on = ["aws_instance.edgar-test"]
}*/