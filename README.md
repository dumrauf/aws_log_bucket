# AWS Log Bucket

This repository contains a Terraform module that creates a logging bucket. The logging bucket can then be used to store [CloudFront access logs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html), [S3 access logs](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerLogs.html#how-logs-delivered) or most other of AWS's logs.


## You Have

Before you can use the Terraform module in this repository out of the box, you need

 - an [AWS account](https://portal.aws.amazon.com/gp/aws/developer/registration/index.html)
 - a [Terraform](https://www.terraform.io/intro/getting-started/install.html) CLI


## You Want

After running the Terraform module in this repository you get an S3 bucket which can be used to store AWS's logs.


## Setup

The input variables for the module are defined in [settings/example.tfvars](settings/example.tfvars) to be
```hcl
region = "us-east-1"

shared_credentials_file = "/path/to/.aws/credentials"

profile = "<your-profile>"

log_bucket_prefix = "<your-prefix>-"
```
Here, you need to replace the example values with your settings. Note that you also need to update the `log_bucket_prefix` as the current value is _not a valid input_.


## Execution

Initialise Terraform by running
```
terraform init
```
As a best practice, create a new workspace by running
```
terraform workspace new example
```
The log bucket can be planned by running
```
terraform plan -var-file=settings/example.tfvars
```
and created by running
```
terraform apply -var-file=settings/example.tfvars
```


## Outputs

The module has two outputs, namely `log_bucket_id` and `bucket_domain_name` which are the corresponding Terraform attributes of the newly created log bucket.


## Deletion

The logging bucket can be deleted by running
```
terraform destroy -var-file=settings/example.tfvars
```


## FAQs


### Why's the Bucket Not Emptied Before It's Destroyed?

The `force_destroy` option is deliberately set to `false` in order to avoid accidental deletion of the contents when running `terraform destroy`. It's essentially a safety net. Feel free to change it and use it at your own risk.


## AWS Logging Overview

For a detailed overview of AWS Logging, see the excellent article on [https://logmatic.io/blog/everything-you-need-to-know-about-aws-logging/](https://logmatic.io/blog/everything-you-need-to-know-about-aws-logging/).
