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

variable "user_profile" {
    description = "users whcich profile youre using"
    type = string
    default = "kecy"
  
}

variable "shared_credentials_file" {
    description = "profile for user"
    type = string
    default = "C:/Users/njing/.aws/credentials"  
}
variable "tags" {
  description = "tags for environments"
  type = map(string)
  default = {
    application = "fintech-app"
    environments = "testing"
  }
}
