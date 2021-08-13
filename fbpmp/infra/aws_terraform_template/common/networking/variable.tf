variable "aws_region" {
  description = "region of the aws resources"
  default     = "us-west-1"
}

variable "tag_postfix" {
  description = "the postfix to append after a resource name or tag"
  default     = ""
}

variable "vpc_cidr" {
  description = "VPC's CIDR block, it should not overlap with existing VPCs' CIDR"
  default     = "10.1.0.0/16"
}

variable "subnet0_cidr" {
  description = "CIDR block of subnet 0"
  default     = "10.1.0.0/17"
}

variable "subnet1_cidr" {
  description = "CIDR block of subnet 1"
  default     = "10.1.128.0/17"
}

variable "publisher_vpc_cidrs" {
  description = "Publisher's VPC's CIDR blocks, it should not overlap with existing VPCs' CIDR"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "ingress_rules" {
  default = {}
  type = map(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "Security group ingress rules"
}