variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.1.1.0/24", "10.1.2.0/24"]
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.1.4.0/24", "10.1.5.0/24", ]
}

variable "db_subnet_cidrs" {
 type        = list(string)
 description = "DB Subnet CIDR values"
 default     = ["10.1.6.0/24", "10.1.7.0/24", ]
}

variable "azs_public" {
 type        = string
 description = "Availability Zones"
 default     = "us-east-1a"
}

variable "azs_private" {
 type        = string
 description = "Availability Zones"
 default     = "us-east-1b"
}

variable "azs_db" {
 type        = string
 description = "Availability Zones"
 default     = "us-east-1c"
}