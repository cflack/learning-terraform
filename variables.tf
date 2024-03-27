variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "name and owner for ami filter"

  type = object({
    name = string
    owner = string
  })

  default = {
    name   = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }  
}

variable "environment" {
  description = "Environment"

  type = object({
    name = string
    network_prefix = string
  })

  name = "dev"
  network_prefix = "10.0"
}

variable "asg_min_size" {
  description = "Minimum cluster size"

  default = 1
}

variable "asg_max_size" {
  description = "Maximum cluster size"

  default = 2
}
