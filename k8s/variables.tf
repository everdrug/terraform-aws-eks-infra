variable "vpc_cidr_block" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "public_subnet01_netnum" {
  type = string
}

variable "private_subnet01_netnum" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "node_desired_size" {
  type = number
}

variable "node_max_size" {
  type = number
}

variable "node_min_size" {
  type = number
}

variable "ami_type" {
  type = string
}

variable "capacity_type" {
  type = string
}

variable "disk_size" {
  type = number
}

variable "instance_types" {
  type = list(any)
}
