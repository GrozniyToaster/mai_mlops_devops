output "bucket_name" {
  value = yandex_storage_bucket.s3_bucket.bucket
}

output "bucket_domain" {
  value = yandex_storage_bucket.s3_bucket.bucket_domain_name
}