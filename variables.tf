variable "resource_group" {
  description = "The Azure Resource group"
  default     = "jarek-test-cicd"
}


variable "prefix" {
  description = "The Prefix used for all resources in this example.In case of VM it can be VM Name"
  default     = "cicd"
}



variable location {
  default = "west europe"
}