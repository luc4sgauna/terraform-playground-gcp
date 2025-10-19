variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "my-devops-playground-468422"
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
  default     = "terraform-playground-bucket-468422"
}