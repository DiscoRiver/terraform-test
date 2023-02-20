terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    profile = "disco-dev"
}

resource "aws_instance" "simple-ec2" {
    ami = var.ami
    instance_type = var.instance_type

    credit_specification {
        cpu_credits = "standard"
    }
}