variable "aws_region" {
  description = "Region for the VPC"
}

variable "vpc_cidr" {
  description = "Main VPC CIDR Block"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default     = "10.0.2.0/24"
}

variable "key_path" {
  description = "SSH Public Key path"
  default     = "/Users/saupathak/.ssh/id_rsa.pub"
}

variable "ami" {
  type = "map"

  default = {
    ap-southeast-2 = "ami-67589505" #SydneyRegion
    ap-southeast-1 = "ami-76144b0a" #SingaporeRegion
    ap-northeast-1 = "ami-6b0d5f0d" #TokoyoRegion
  }

  description = "I added for 3 regions: Sydney,Singapore and Tokoyo. You can use as many regions as you want."
}
