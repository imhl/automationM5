variable "aws_access_key_id" {
  type    = string
  default = "ASIATDS7IEUKMSGICQVC"
}

variable "aws_secret_access_key" {
  type    = string
  default = "fMQ9CT8fZATndtjF02IQ4n1PXdk1P0d5FD9kwbXq"
}

variable "aws_session_token" {
  type    = string
  default = "IQoJb3JpZ2luX2VjEGkaCXVzLXdlc3QtMiJGMEQCIANEHz4uLEQ29kFu18tfQGyscJGZLxgxmmI2psLylE6PAiAXQsTW6VWLFjeGnyLEB5LP4G/4xARdVuKla+FbDJ+ETSqcAggxEAEaDDIxMzg3NDM4NjE5NiIMmJkavWDEKLGA2bnlKvkBFvWX+T5+cLvH74aSLuCOjElDFtqQgQbzo3pv/f9TdCEeBnhC/ibPKWgb2nh9gD0+FCbikrPSw4wyj3szTML8QWo1Na7VQqXQHaaCNFat5zMfFcTHdJxIhYKDUe0lC54Fo4Gq8kycA6uKlsH6Ki7bVGUqMrn5xXZ/eNE8TPe1d1cIqk89dGA6MoeF98AR4GLotFRR7TjbpbmdyclowgPta7oa9g++J/gn7xzYKfMuWn3xXk1QpEg5eJA3opKvTpKLza/J7lWHf1kGdWpgcLc+QMegfKIoILproFDjQN7e+fTaK9UCdJetID1L79A3hPH0T5g7hdKvD7v8MJbm3tIGOp4BTg/1x8MZaPP/LpvcAetMa6I6I6D1LL+v1jQPYEpg8GBD6GI6VZlHhIdHr2D6tTQGQQQoQc+Ryk8Srfv1K44Ztt9FMupHawWcx4GMHp+FLeItafMv1aWrnuEjSAlpXxFCPULORFzX8Yi40ub02btjUdBmZd7AKB+fLGlnxxQmIaNhdT6DDkFQeU2RjiEE/uE4vVw8lq5PbTyx82XgjUE="
}

variable "source_ip_block" {
  default = "0.0.0.0/0"
  type    = string
  validation {
    condition     = can(cidrnetmask(var.source_ip_block))
    error_message = "Must be a valid IPv4 CIDR block address."
  }
}

variable "group" {
  default     = "jenkins"
  description = "the name of the group we will be using for Ansible purposes"
}

variable "name" {
  default     = "jenkins"
  description = "the name of the instance we will be using for Ansible purposes"
}
