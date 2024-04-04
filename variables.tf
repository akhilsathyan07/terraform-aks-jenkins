variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
  default     = "rg-private-aks-demo"
}
##
# Define variables for location, service principal for AKS and Bastion VM Admin
##
variable "location" {
  type = map(string)
  default = {
    value  = "Canada Central"
    suffix = "canadacentral" # The corresponding value of location that is used by Azure in naming AKS resource groups
  }
}

# variable "aks_service_principal" {
#   type = map(string)
  /* Set value with .tfvars 
  {
    client_id     = "47532a40-9664-4684-a821-e9389af80840"
    client_secret = "ExC8Q~h_dy-VdRm4j.il1ODXbEfmKD_G8ZRjtdod"
  }
  
}

variable "bastion_admin" {
  type = map(string)
  /* Set value with .tfvars 
  {
    username = "akhil.sathyan@yandex.com"
    password = "@Khilsathyan20"
  }
  */

variable "aks_service_principal" {
  description = "The service principal for AKS cluster"
  type = map(string)
}

variable "bastion_admin" {
  description = "Admin account for the bastion host"
  type = map(string)
}
