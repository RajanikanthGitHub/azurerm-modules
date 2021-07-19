variable "project_name" {
  type    = string
  default = "demo"
}

variable "vnet_name" {
  type    = string
  default = "vnet"
}

variable "address_space" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  default = ["subnet-1", "subnet-2", "subnet-3"]
}

variable "subnet_prefix" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# variable "security_rule" {
#   #description = "adding Inbound and Outbound Security Group rules"
#   type        = map(object({
#     name                   = string
#     priority               = number
#     direction              = string
#     access                 = string
#     protocol               = string
#     source_port_range      = string
#     destination_port_range = string
#     source_address_prefix  = string
#     description            = string
#   }))
  
# }