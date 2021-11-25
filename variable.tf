variable "aws-region" {
  description = "Region to use for deployment"
  type = string
  default = "us-east-1"
}

variable "group_name" {
  description = "name of group to create"
  type = string
  default = "linux_admin_Group"
}

variable "user_name" {
    description = "users to add to the group"
    type = string
    default = "user-1" 
}

