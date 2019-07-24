resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr}"
  tags = {
      Name = "${var.vpc_name}"
      Environment = "${var.environment}"
      Terraformed = "True"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"
}

resource "aws_vpc_dhcp_options" "mydns" {
  domain_name_servers = ["10.0.0.0", "8.8.8.8"]
  }

  