variable "domain_name" {
    type        = string
    description = "The domain name for the website."
}

variable "zone_id" {
  type = string
  description = "The Route53 DNS Hosted Zone ID to be used for creation of DNS records."
}

variable "region" {
  type = string
  description = "The AWS Region to deploy resources."
  default = "us-east-1"
}