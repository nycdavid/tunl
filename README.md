### Steps
1. Add the correct SSH key to the agent using `ssh-add`
1. Fill in your AWS credentials in `tunl.tf`
1. Fill in the correct `subnet_id` (and VPC if not launching into the default one)
1. Run `terraform apply`
1. SSH into instance and start the process (i.e. Kibana)
1. Create an SSH tunnel from your localhost to the port on the EC2 instance
1. Run `terraform destroy` once you're finished.
