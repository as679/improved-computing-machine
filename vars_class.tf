# This file contains various variables that affect the class itself
#

# The following variables should be defined via a seperate mechanism to avoid distribution
# For example the file terraform.tfvars

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "pkey" {}
variable "avi_default_password" {}
variable "avi_admin_password" {}
variable "avi_backup_admin_username" {}
variable "avi_backup_admin_password" {}

variable "student_count" {
  description = "The class size. Each student gets a controller / server pairing"
  default     = 1
}

variable "id" {
  description = "A prefix for the naming of the objects / instances"
  default     = "aviWAF"
}

variable "owner" {
  description = "Sets the AWS Owner tag appropriately"
  default     = "Training"
}

variable "aws_az" {
  type        = "map"
  description = "Control of placement of objects within the AWS Availability Zone"

  default = {
    us-west-2 = "us-west-2a"
    eu-west-2 = "eu-west-2a"
    eu-west-1 = "eu-west-1a"
  }
}

variable "key" {
  description = "AWS SSH keypair name"
  default     = "training-access"
}