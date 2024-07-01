variable "project_name" {
  type    = string
  default = "3tierdemo"
}

variable "env" {
  type    = string
  default = "test"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "allowed_location_policy_id" {
  type    = string
  default = "/providers/Microsoft.Authorization/policyDefinitions/e56962a6-4747-49cd-b67b-bf8b01975c4c"
}

variable "resource_groups" {
  type = set(string)
  default = [
    "networking",
    "webserver",
    "application",
    "database"
  ]
}

variable "vnet1" {
  description = "configuration for vnet 1"
  type = object({
    name = string
    cidr = string
    subnet_names = list(string)
    subnet_prefixes = list(string)
  })
}

variable "vnet2" {
  description = "configuration for vnet 2"
  type = object({
    name = string
    cidr = string
    subnet_names = list(string)
    subnet_prefixes = list(string)
  })
}

variable "vnet_cidr" {
  description = "CIDR block for the Virtual Network"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.1.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.10.10.0/24", "10.10.11.0/24"]
}

variable "public_app_gateway_cidr" {
  description = "CIDR blocks for application gateway"
  type        = string
  default     = "10.10.9.0/26"
}

variable "public_bastion_cidr" {
  description = "CIDR blocks for bastion host"
  type        = string
  default     = "10.10.9.64/26"
}

variable "public_ips" {
  type    = set(string)
  default = ["natgateway", "bastion", "appgateway"]
}

variable "create_storage_account" {
  type    = bool
  default = false
}

variable "create_keyvault" {
  type    = bool
  default = false
}

variable "create_app_gateway" {
  type    = bool
  default = false
}