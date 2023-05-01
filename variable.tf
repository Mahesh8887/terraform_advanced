variable "access_key" {
  default     = "AKIA3GZODAO7LH3J4CCL"
}
variable "secret_key" {
  default     = "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"
}
variable "region" {
  default     = "us-east-1"
}
variable "tag_name" {
  description = "Tag Name of for Ec2 Instance"  
  default     = "my_first_ec2_instance"
}
variable "ami_id" {
  description = "AMI for Ubuntu EC2 Instance"  
  default     = ""
}
variable "instance_type" {
  description = "instance type for Ec2"
  default     = "t2.micro"
}
