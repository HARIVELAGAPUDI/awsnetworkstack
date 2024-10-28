#resource "aws_internet_gateway" "internet_gateway" {
#  vpc_id = var.vpc_id
#  tags = {
#    Name = format("${var.environment}-${var.app_id}-${var.region}-%s",var.igw_name)
#	  Environment = var.environment
# 	  Terraformed = "True"
#  }
#}

#resource "aws_internet_gateway" "internet_gateway" {
#  #vpc    = var.vpc
#  count = length(var.vpc)
#  vpc_id = var.vpc[count.index]["vpc_id"]
#  tags = {
#    Name = format("${var.environment}-${var.app_id}-${var.region}-%s", var.vpc[count.index], ["name"])
#	  Environment = var.environment
# 	  Terraformed = "True"
#  }
#}

resource "aws_internet_gateway" "internet_gateway" {
  count = length(var.vpc)
  vpc_id     = var.vpc_id
  tags = {
    Name = "IGW-${var.vpc[count.index]["name"]}"
    Environment = var.environment
    Terraformed = "True"
  }
}
