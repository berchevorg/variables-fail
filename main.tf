terraform {
  backend "remote" {
    organization = "berchevorg"

    workspaces {
      name = "variables-fail"
    }
  }
}

variable "region" {}

variable "ami" {}

variable "instance_type" {}


provider "aws" {
  region = var.region
}

resource "aws_instance" "windows" {
  ami                    = var.ami
  instance_type          = var.instance_type
}
