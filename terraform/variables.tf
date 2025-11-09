variable "region" {
  default = "us-east-1"
}

variable "environment" {
  default = "dev"
}

variable "s3_bucket_name" {
  default = "safebadge-bucket-example-123456"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  default = "t3.micro"
}
