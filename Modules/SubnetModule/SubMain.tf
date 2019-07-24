resource "aws_subnet" "private_subnets" {
    count = "${length(var.private_subnets)}"
    vpc_id = "${var.vpc_id}"
    cidr_block = "${lookup(var.private_subnets[count.index],"cidr")}"
    tags = {
        Name = "${lookup(var.private_subnets[count.index], "name")}"
        Environment = "${var.environment}"
        Terraformed = "True"
    }
}
  
resource "aws_subnet" "public_subnets" {
    count = "${length(var.public_subnets)}"
    vpc_id = "${var.vpc_id}"
  cidr_block = "${lookup(var.public_subnets[count.index],"cidr")}"
    tags = {
         Name = "${lookup(var.public_subnets[count.index], "name")}"
Environment = "${var.environment}"
Terraformed = "True"

   }
}

