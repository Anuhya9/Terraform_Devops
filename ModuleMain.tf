module "VPC" {
    source      = "./Modules/VPCModule"
    vpc_cidr    = "${(lookup(var.vpcs,"cidr"))}"
    vpc_name    = "${(lookup(var.vpcs,"name"))}"
    environment = "${var.environment}"
}

module "subnets" {
source = "./Modules/SubnetModule"
private_subnets = "${var.private_subnets}"
public_subnets = "${var.public_subnets}"
environment = "${var.environment}"
vpc_id = "${module.VPC.vpc_id}"
}