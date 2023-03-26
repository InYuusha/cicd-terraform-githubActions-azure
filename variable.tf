variable "ACR_USERNAME"{
    type=string
}

variable "ACR_PASSWORD"{
    type=string
}
variable "CONTAINER_IMAGE" {
    description = "container image variable"
  type = string
}

variable "IMAGE_SERVER" {
    description = "image server"
  type = string
}

variable "SUBSCRIPTION_ID" {
    type = string
}

variable "TENANT_ID" {
    type = string
}

variable "LOCATION" {
    type = string
}

variable "CLIENT_ID" {
    type= string
}
variable "CLIENT_SECRET" {
    type=string
}