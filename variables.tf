variable "name" {
  description = "VM name. Also used to name the NIC and OS disk."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group the VM is created in."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "subnet_id" {
  description = "Subnet the VM's network interface attaches to."
  type        = string
}

variable "size" {
  description = "VM size. Burstable B-series sizes are the cheapest."
  type        = string
  default     = "Standard_B2ats_v2"
}

variable "admin_username" {
  description = "Admin account name on the VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "Contents of your SSH PUBLIC key (the .pub file)."
  type        = string
}

variable "os_disk_type" {
  description = "OS disk storage type. Standard_LRS (HDD) is cheapest, StandardSSD_LRS is a good balance."
  type        = string
  default     = "StandardSSD_LRS"
}

variable "os_disk_size_gb" {
  description = "OS disk size in GB."
  type        = number
  default     = 30
}

variable "image" {
  description = "Marketplace image. Defaults to Ubuntu Server 24.04 LTS (x64, Gen2)."
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}

variable "auto_shutdown_enabled" {
  description = "Create a daily auto-shutdown (deallocate) schedule."
  type        = bool
  default     = true
}

variable "auto_shutdown_time" {
  description = "Daily shutdown time in HHMM, 24-hour."
  type        = string
  default     = "1800"
}

variable "auto_shutdown_timezone" {
  description = "Windows-style time zone name for the shutdown time."
  type        = string
  default     = "GMT Standard Time"
}

variable "tags" {
  description = "Tags applied to resources."
  type        = map(string)
  default     = {}
}
