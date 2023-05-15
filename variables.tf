variable "location" {
  description = "Location of the resource"
  type        = string
  default     = "Brazil South"
}

variable "rg_name" {
  description = "RG Name"
  type        = string
  default     = "RGREMOTESTATE"
}

variable "rg_name_02" {
  description = "RG Name"
  type        = string
  default     = "project001"
}

variable "strg_account_tier" {
  description = "Tier off storage account"
  type        = string
  default     = "Standard"
}

variable "srtg_account_replication_type" {
  description = "Replication strategy"
  type        = string
  default     = "LRS"
  sensitive   = true
}


variable "strg_name" {
  description = "Storage Name"
  type        = string
  default     = "remotestate20330514"

}

variable "strg_blob_name" {
  description = "Storage blob Name"
  type        = string
  default     = "remotestatetf"

}

variable "strg_blob_access_type" {
  description = "Storage blob access type"
  type        = string
  default     = "private"

}

variable "tag_environment" {
  description = "Tag environment"
  type        = string
  default     = "staging"

}

variable "vnet_001" {
  description = "Project001 VNET name"
  type        = string
  default     = "vnet001"

}

variable "nsg_001" {
  description = "Project001 nsg name"
  type        = string
  default     = "nsg001"

}

variable "project001_snet_001" {
  description = "Project001 snet 001 name"
  type        = string
  default     = "snet001"

}

variable "project001_snet_002" {
  description = "Project001 snet 002 name"
  type        = string
  default     = "snet002"

}

variable "vm_001" {
  description = "VM name"
  type        = string
  default     = "vm001"

}

variable "nic_001" {
  description = "VM name"
  type        = string
  default     = "nicproj01"

}
