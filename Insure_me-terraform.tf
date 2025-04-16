provider "aws" {
  region     = "us-east-1"
  access_key = "Enter_AWS_access_key"
  secret_key = "Enter_AWS_secret_key"
}

# Infra-Structure readyness for project1 : Banking

#Jenkins master Node : VM1
resource "aws_instance" "my_ec2_1" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "Jenkins_master"
  }
}

#Jenkins slave Node (Build server) VM2

resource "aws_instance" "my_ec2_2" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "Jenkins SlaveNode(Build server)"
  }
}

# Kubernetes Master Node VM3

resource "aws_instance" "my_ec2_3" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "K8s-Master"
  }
}

# Kubernetes K8s-Node1 VM4

resource "aws_instance" "my_ec2_4" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "K8s-Node1"
  }
}

# Kubernetes K8s-Node2 VM5

resource "aws_instance" "my_ec2_5" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "K8s-Node2"
  }
}

# Prometheus & Grafana Monitoring Server VM6

resource "aws_instance" "my_ec2_6" {
  ami               = "ami-023a307f3d27ea427" 
  instance_type     = "t2.micro" 
  associate_public_ip_address = true
  key_name          = "terrform_keypair" 
  tags = {
    Name = "Prometheus & Grafana Monitoring"
  }
}

