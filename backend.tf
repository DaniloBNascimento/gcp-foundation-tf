terraform {
    backend "gcs" {
        bucket = "state-tf-gcp-foundation"
        prefix = "tf-state"
    }
}