resource "aws_instance" "web" {
  ami = data.aws_ami.amazon-2.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name ="helloworld"

  }

}