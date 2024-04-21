# on Prem EC2 instance running Nessus
resource "aws_instance" "onprem_ec2_nessus" {
  ami                         = var.default_ami
  instance_type               = var.instance_type                                                        # ami instance type
  subnet_id                   = aws_subnet.public_subnet_onprem.id                                       # get public subnet id
  availability_zone           = data.aws_availability_zone.current_availability_zone.name                # get availability zone
  associate_public_ip_address = true                                                                     # gives public ip address
  vpc_security_group_ids      = ["${aws_security_group.onprem_sg.id}"]
  key_name                    = aws_key_pair.ssh_key.id

  user_data = filebase64("./userdataonprem.sh")
  metadata_options {
    http_tokens   = "optional" # optional tokens
    http_endpoint = "enabled"
  }

  tags = {
    Name = "onprem EC2 running Nessus"
  }
}

resource "aws_instance" "onprem_ec2_nessus2" {
  ami                         = var.default_ami
  instance_type               = var.instance_type                                                           # ami instance type
  subnet_id                   = aws_subnet.public_subnet_onprem.id                                          # get public subnet id
  availability_zone           = data.aws_availability_zone.current_availability_zone.name                   # get availability zone
  associate_public_ip_address = true                                                                        # gives public ip address
  vpc_security_group_ids      = ["${aws_security_group.onprem_sg.id}"]
  key_name                    = aws_key_pair.ssh_key.id

  user_data = filebase64("./userdataonprem.sh")
  metadata_options {
    http_tokens   = "optional" # optional tokens
    http_endpoint = "enabled"
  }

  tags = {
    Name = "2nd onprem EC2 running Nessus"
  }
}

resource "aws_instance" "onprem_ec2_nessus3" {
  ami                         = var.default_ami
  instance_type               = var.instance_type                                                            # ami instance type
  subnet_id                   = aws_subnet.public_subnet_onprem.id                                           # get public subnet id
  availability_zone           = data.aws_availability_zone.current_availability_zone.name                    # get availability zone
  associate_public_ip_address = true                                                                         # gives public ip address
  vpc_security_group_ids      = ["${aws_security_group.onprem_sg.id}"]
  key_name                    = aws_key_pair.ssh_key.id

  user_data = filebase64("./userdataonprem.sh")
  metadata_options {
    http_tokens   = "optional" # optional tokens
    http_endpoint = "enabled"
  }

  tags = {
    Name = "3rd onprem EC2 running Nessus"
  }
}


