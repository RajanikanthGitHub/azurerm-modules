variable "security_rule" {
  #description = "adding Inbound and Outbound Security Group rules"
  type        = map(object({
    name                   = string
    priority               = number
    direction              = string
    access                 = string
    protocol               = string
    source_port_range      = string
    destination_port_range = string
    source_address_prefix  = string
    description            = string
  }))
}

variable "nsg_name" {
  type = string
  default = "nsg"
}