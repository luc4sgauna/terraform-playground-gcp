# Terraform GCP Storage Bucket Example

This is a simple Terraform project that creates a Google Cloud Storage bucket. It's designed as a learning example for beginners and uses Terrateam for infrastructure changes.

## What's Included

- Basic GCP provider configuration
- A single storage bucket with versioning enabled
- Variables for customization
- Output to show the bucket URL

## Prerequisites

1. GCP Project setup and configuration
2. Terrateam configured in your repository
3. Cloud Storage API enabled in your GCP project

## How It Works

This project creates a Google Cloud Storage bucket with:
- Versioning enabled
- Uniform bucket-level access
- US region location
- Force destroy enabled for easy cleanup

> **Note about force_destroy**: This project uses `force_destroy = true` to make cleanup easier in a learning environment. In production environments, this is generally not recommended as it allows Terraform to delete a bucket even if it contains objects. For production workloads, consider setting this to `false` to prevent accidental data loss.

## Making Changes

1. Create a new branch for your changes
2. Modify the Terraform files as needed
3. Commit and push your changes
4. Create a Pull Request
5. Terrateam will automatically run a terraform plan and show the expected changes
6. To apply the changes:
   - Review the plan in the PR
   - Comment `terrateam apply` in the PR to trigger the apply
   - Once applied successfully, merge the PR

## Variables

The following variables can be configured in `variables.tf`:

- `project_id`: Your GCP project ID
- `bucket_name`: Name for your storage bucket (must be globally unique)

## Files Structure

- `main.tf` - Provider and bucket configuration
- `variables.tf` - Variable definitions
- `outputs.tf` - Bucket URL output
