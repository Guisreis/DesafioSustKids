
variable "bucket_name" {
  type        = string
  default = "siteestaticogsreis"
  description = "Nome do bucket."
}
variable "region" {
  type    = string
  default = "us-east-1"
}
variable "profile" {
  type = string
  default = "default"
}
variable origin_id { 
default = "siteestatico" 
}
variable s3_endpoint { 
default = "siteestaticogsreis.s3-website-us-east-1.amazonaws.com" 
}