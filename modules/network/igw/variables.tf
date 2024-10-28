variable "vpc" {
  description = "List of VPCs with names"
  type        = list(map(string))
  default = [
    {
      vpc_id = "vpc-12345678",
      name   = "VPC1"
    },
    {
      vpc_id = "vpc-87654321",
      name   = "VPC2"
    }
  ]
}

variable "vpc_id" {
    type = string
}

variable "igw_name" {
    type = string
}

variable "environment" {
  type = string
}

variable "app_id" {
  type = string
}

variable "region" {
  type = string
}

