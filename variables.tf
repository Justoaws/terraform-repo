# AWS Region where resources will be created
variable "region" {
  description = "The AWS region to deploy into"
  default     = "us-east-1"
}

# VPC ID where the resources will be deployed
variable "vpc_id" {
  description = "The VPC ID to deploy into"
  type        = string
  default     = "vpc-07964eafa34277211"
}

# List of subnet IDs where the resources will be deployed
variable "subnets" {
  description = "A list of subnets to deploy into"
  type        = list(string)
  default     = ["subnet-0f397d3685546527a", "subnet-0b3c510eeda5f30c3"]
}

# EC2 instance type for the servers
variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

# AMI ID to use for the EC2 instances (Ubuntu 20.04 in us-east-1)
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
  default     = "ami-02c21308fed24a8ab"
}

# SSH key pair name to use for EC2 instances
variable "key_name" {
  description = "The SSH key name to use for EC2 instances"
  type        = string
}

# Desired capacity of the Auto Scaling Group
variable "desired_capacity" {
  description = "The desired capacity of the Auto Scaling Group"
  default     = 2
}

# Maximum size of the Auto Scaling Group
variable "max_size" {
  description = "The maximum size of the Auto Scaling Group"
  default     = 4
}

# Minimum size of the Auto Scaling Group
variable "min_size" {
  description = "The minimum size of the Auto Scaling Group"
  default     = 1
}

# ARN of the SSL certificate to be used by the Load Balancer
variable "alb_certificate_arn" {
  description = "ARN of the SSL certificate for ALB"
  type        = string
  default     = "arn:aws:acm:us-east-1:533267010163:certificate/34eb3086-cba2-4af1-9db3-44d65ce594ce"
}
