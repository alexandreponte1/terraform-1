variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "playground"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}
