# Terraform script to setup EC2 with Gitlab Runner

This Git repository contains the required Terraform scripts to setup an AWS EC2 instance with a Gitlab Runner and a GitLab Runner Cleanup Tool.

## What this script does

* Launch an EC2 instance with the desired configuration
* Initialise the instance with a launch script:
    * System Updates
    * Install `docker` and `gitlab-ci-multi-runner`
    * Setup services to be launched at startup
    * Configure and register `gitlab-runner`
    * Start `docker` and `gitlab-ci-multi-runner`
    * Launch a docker container that perform automated Gitlab Runner cleanup (see: https://gitlab.com/gitlab-org/gitlab-runner-docker-cleanup)
   
## Usage

Create a `main.tf` file with the following configuration:

```hcl
module "my_gitlab_runner" {
  source = "github.com/BasileTrujillo/terraform-ec2-gitlab-runner//docker-runner"

  # AWS EC2 Settings
  aws_instance_name = "My Gitlab Runner"
  aws_region = "eu-west-1"
  aws_volume_size = "8"
  aws_instance_type = "t2.small"
  aws_security_group_ids = ["sg-xxxxxx", "sg-xxxxxx"]
  aws_subnet_id = "subnet-xxxxxx"
  aws_instance_key_name = ""

  # Gitlab Runner Setting
  gitlab_runner_name = "gitlab-runner-1"
  gitlab_runner_token = "xxxxxxxxxxxxxxxxx"
  gitlab_runner_tags = "aws,t2.small,docker"
  gitlab_concurrent_job = "1"
}
```

For a more huge configuration with at least 4 concurrent runners, see `examples/t2.medium_30g.tf`.

You can also setup all variable contained in `docker-runner/variables.tf`
