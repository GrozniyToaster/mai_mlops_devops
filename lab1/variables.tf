variable "yc_cloud_id" {
  description = "Yandex Cloud Cloud ID"
  type        = string
}

variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
}

variable "s3_access_key" {
  description = "S3-compatible static key access"
  type        = string
  sensitive   = true
}

variable "s3_secret_key" {
  description = "S3-compatible static key secret"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "Base name for the S3 bucket"
  type        = string
  default     = "my-terraform-bucket"
}

variable "versioning_enabled" {
  description = "Enable bucket versioning"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default     = {
    Environment = "Test"
    Terraform   = "true"
  }
}