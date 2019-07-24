variable "region" {
    type = "string"
}

variable "access_key" {
    type = "string"
}

variable "secret_key" {
    type = "string"
}


variable "environment" {
    type = "string"
}


variable "vpcs" {
    type = "map"
}

variable "availability_zones" {
    type = "list"
  
}

variable "public_subnets" {
    type = "list"
  }

 variable "private_subnets"{
     type = "list"
 }

