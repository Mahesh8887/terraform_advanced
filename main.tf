terraform {
        required_providers {

        aws =  {
                source = "hashicorp/aws"
                version = ">= 4.16"
                }
        }
        required_version = ">= 1.2.0"
}

provider "aws" {
        region = "us-east-1"
}

resource "aws_instance" "myfirstinstance" {
        count = 2
        ami = "ami-007855ac798b5175e"
        instance_type = "t2.micro"
        tags = {
                Name = "Terraform_Server1"
                }
}

resource "aws_s3_bucket" "bucket_form_terraform_by_MVB" {
        bucket = "aws-s3-bucket.bucket-form-terraform.mahesh"
        tags = {
                Name = "bucket_from_terraform_by_mahesh"
                Environment = "DevQA"
                }
}

output "ec2_public_ips" {
        value = aws_instance.myfirstinstance[*].public_ip
        }
                                           