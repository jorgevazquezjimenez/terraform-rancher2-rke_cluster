variable "api_url" {
  type = string
  description = "(Required) Rancher API URL"
}

variable "access_key" {
  type = string
  description = "(Required) Rancher Access Key"
}

variable "secret_key" {
  type = string
  description = "(Required) Rancher Secret Key"
}

# RKE config
variable "name" {
  type = string
  description = "(Required) Rancher RKE cluster name"
}

variable "description" {
  type = string
  description = "(Required) RKE cluster description"
}

variable "workers_node_template" {
  type = string
  description = "(Required) RKE worker nodes template name."
}