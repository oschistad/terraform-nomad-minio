# Nomad
variable "nomad_datacenters" {
  type        = list(string)
  description = "Nomad data centers"
  default     = ["dc1"]
}
variable "nomad_namespace" {
  type        = string
  description = "[Enterprise] Nomad namespace"
  default     = "default"
}
variable "nomad_host_volume" {
  type        = string
  description = "Nomad Host Volume"
  default     = "persistence"
}

# Minio
variable "service_name" {
  type        = string
  description = "Minio service name"
  default     = "minio"
}

variable "host" {
  type        = string
  description = "Minio host"
  default     = "127.0.0.1"
}

variable "port" {
  type        = number
  description = "Minio port"
  default     = 9000
}

variable "container_image" {
  type        = string
  description = "Minio docker image"
  default     = "minio/minio:latest"
}

variable "access_key" {
  type        = string
  description = "Minio access key"
}

variable "secret_key" {
  type        = string
  description = "Minio secret key"
}

variable "data_dir" {
  type        = string
  description = "Minio server data dir"
  default     = "/minio/data"
}

variable "container_environment_variables" {
  type        = list(string)
  description = "Additional minio container environment variables"
  default     = []
}
variable "use_host_volume" {
  type        = bool
  description = "Switch for nomad jobs to use host volume feature"
  default     = false
}

variable "use_canary" {
  type = bool
  description = "Uses canary deployment for Minio"
  default = false
}

# MC
variable "mc_service_name" {
  type        = string
  description = "Minio client service name"
  default     = "mc"
}

variable "mc_container_image" {
  type        = string
  description = "Minio client docker image"
  default     = "minio/mc:latest"
}

variable "mc_container_environment_variables" {
  type        = list(string)
  description = "Minio client environment variables"
  default     = []
}

variable "buckets" {
  type        = list(string)
  description = "List of buckets to create on startup"
  default     = []
}
