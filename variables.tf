variable "region" {}


variable "web_instance_type" {
  default = "t2.micro"
}

variable "web_ami" {
  default = "ami-00126411777531ca6"
}

variable "static_bucket_name" {
  default = "static-bucket"
}

variable "cidr_whitelist" {
  type    = "list"
  default = ["216.85.170.0/24", "176.221.109.74/32"]
}

#
# Networking Variables
#

# Randomly chosen AZs.  If one is not available at the time of creation, then
# choose a different one. Add China region when available.
variable "azs" {
  default = {
    eu-west-1  = "eu-west-1a, eu-west-1b, eu-west-1c"
  }
}

variable "vpc_cidr" {
  default = "10.202.0.0/16"
}

# Split IP space into 4 zones
# az1 10.200.0.0/18
# az2 10.200.64.0/18
# az3 10.200.128.0/18
# az4 10.200.192.0/18

# Create public and private subnets in each az
variable "subnets_public_cidr" {
  default = {
    "0" = "10.202.0.0/24"
    "1" = "10.202.64.0/24"
    "2" = "10.202.128.0/24"
    "3" = "10.202.242.0/24"
  }
}

variable "public_subnet_count" {
  default = 2
}

variable "public_dns_cname" {}
