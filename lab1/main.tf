resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "yandex_storage_bucket" "s3_bucket" {
  bucket     = "${var.bucket_name}-${random_id.bucket_suffix.hex}"
  access_key = var.s3_access_key
  secret_key = var.s3_secret_key
  acl        = "private"

  versioning {
    enabled = var.versioning_enabled
  }


  tags = var.tags
}