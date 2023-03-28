# Example 2: Deploy a bucket with Terraform and Crossplane

In this example we'll deploy a Cloud storage bucket with Terraform and
Crossplane. Assumes that the tools and their GCP provider are installed already.

## Steps

### Terraform

* Login to Google Cloud: `gcloud auth login`
* Set your Google Cloud project in [the provider config](./terraform/main.tf)
* `terraform init`
* `terraform apply`
* `terraform destroy`

### Crossplane

* `kubectl create ns 02-terraform-and-crossplane-bucket`
* `kubectl apply -n 02-terraform-and-crossplane-bucket -f ./crossplane/bucket.yaml`