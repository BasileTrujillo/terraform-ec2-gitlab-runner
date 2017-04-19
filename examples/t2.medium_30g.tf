module "my_gitlab_runner" {
  source = "github.com/BasileTrujillo/terraform-ec2-gitlab-runner//docker-runner"

  # AWS EC2 Settings
  aws_instance_name = "Gitlab Runner #1"
  aws_region = "eu-west-1"
  aws_volume_size = "30"
  aws_instance_type = "t2.medium"
  aws_security_group_ids = ["sg-xxxxxx", "sg-xxxxxx"]
  aws_subnet_id = "subnet-xxxxxx"
  aws_instance_key_name = ""

  # Gitlab Runner Setting
  gitlab_runner_name = "gitlab-runner-1"
  gitlab_runner_token = "xxxxxxxxxxxxxxxxx"
  gitlab_runner_tags = "aws,t2.medium,docker"
  gitlab_concurrent_job = "4"

  # GitLab Runner Cleanup Tool Setting
  gitlab_rct_low_free_space= "10G"
  gitlab_rct_expected_free_space= "20G"
  gitlab_rct_low_free_files_count= "1048576"
  gitlab_rct_expected_free_files_count= "2097152"
  gitlab_rct_default_ttl= "10m"
}
