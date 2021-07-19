
# this is variable can be used for all RSG, Vnet, Subnet, NSG, NSG rules as a prefix
variable "project_name" {
  type    = string
  default = "test"
}

variable "rsg_name" {
  type    = string
  default = "rsg"
}

variable "location" {
  type    = string
  default = "West Europe"
}