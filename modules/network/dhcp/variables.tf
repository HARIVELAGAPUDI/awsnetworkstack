variable "vpc_id" {
  description = "The ID of the VPC to associate DHCP options with."
  type        = string
}

variable "app_id" {
  type = string
}

variable "region" {
  type = string
}

variable "environment" {
  type = string
}

variable "dhcp" {
  type = list
}
