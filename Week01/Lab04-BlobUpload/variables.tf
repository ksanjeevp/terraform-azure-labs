variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}
variable "blob_name" {
  description = "Name of the blob"
  type        = string
}

variable "source_file" {
  description = "Local file to upload"
  type        = string
}