resource "google_storage_bucket" "demo" {
  name          = "ksick-cncf-linz-demo-terraform"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}