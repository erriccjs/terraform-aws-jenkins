
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.jenkins-instance.id
  allocation_id = aws_eip.jenkins.id
}

resource "aws_eip" "jenkins" {
  vpc = true
}
