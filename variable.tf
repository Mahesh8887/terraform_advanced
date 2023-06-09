variable "access_key" {
  default     = ""
}
variable "secret_key" {
  default     = ""
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
  default     = "ami-007855ac798b5175e"
}
variable "instance_type" {
  description = "instance type for Ec2"
  default     = "t2.micro"
}
