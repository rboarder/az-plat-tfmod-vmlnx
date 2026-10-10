output "vm_id" {
  description = "Resource ID of the VM."
  value       = azurerm_linux_virtual_machine.this.id
}

output "vm_name" {
  description = "Name of the VM."
  value       = azurerm_linux_virtual_machine.this.name
}

output "private_ip_address" {
  description = "Private IP of the VM."
  value       = azurerm_network_interface.this.private_ip_address
}
