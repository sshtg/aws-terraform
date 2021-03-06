variable "region" {
  type        = string
  default     = "ap-northeast-2"
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

variable "cluster_name" {
  description = "All Resource Prefix Name"
  type        = string
  default     = null
}

# WEB
variable "web_name" {
  description = "EC2 Web Server Instance Type"
  default     = null
}

variable "web_instance_type" {
  description = "EC2 Web Server Instance Type"
  default     = null
}

variable "web_instance_ami" {
  description = "EC2 Web Server Instance Ami Type"
  default     = null
}

variable "web_desired_capacity" {
  description = "WEB Auto Scaling Group Desired Capacity"
  type        = number
  default     = 2
}

variable "web_min_size" {
  description = "WEB Auto Scaling Group Min Size"
  type        = number
  default     = 2
}

variable "web_max_size" {
  description = "WEB Auto Scaling Group Max Size"
  type        = number
  default     = 4
}

variable "web_alb_name" {
  description = "WEB ALB Name"
  type        = string
  default     = null
}

variable "common_key_pair_name" {
  description = "Common Resources Used Key Pair Name"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = null
}

variable "web_ingress_rule" {
  description = "Web Instance Security Group Ingress Rule"
  type        = list(string)
  default     = null
}

variable "web_egress_rule" {
  description = "Web Instance Security Group Egress Rule"
  type        = list(string)
  default     = null
}

variable "web_ingress_cidr_blocks" {
  description = "Web Instance Security Group Ingress Cidr Blocks"
  type        = list(string)
  default     = null
}

variable "alb_subnet_ids" {
  description = "List of IDs of ALB subnets"
  type        = list(string)
  default     = null
}

variable "instance_subnet_ids" {
  description = "List of IDs of subnets"
  type        = list(string)
  default     = null
}