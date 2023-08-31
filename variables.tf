###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


variable "part1" {
  type        = string
  default     = "netology"
}

variable "part2" {
  type        = string
  default     = "develop"
}

variable "part3" {
  type        = string
  default     = "platform"
}

variable "part4" {
  type        = string
  default     = "web"
}

variable "part5" {
  type        = string
  default     = "db"
}


variable "vm_web_resources" {
type = map(string)
default = {vm_web_cores = "2", vm_web_memory ="1", vm_web_core_fraction = "5"}
}

variable "vm_db_resources" {
type = map(string)
default = {vm_db_cores = "2", vm_db_memory ="2", vm_db_core_fraction = "20"}
}

variable "metadata" {
type = map(string)
default = {serial-port-enable = "1", ssh-keys  ="ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID08bAk0mu9NnxuO+QTKCYee5KF2IZsi9DCm8ATi8uzQ root@ycjll.ru-central1.internal"}
}

