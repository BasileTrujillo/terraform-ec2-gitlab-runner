################################################################################################################
## AWS Settings
################################################################################################################
variable aws_region {
  type = "string"
  description = "AWS Region."
  default = "eu-west-1"
}
variable aws_ami {
  type = "string"
  description = "AMI for AWS EC2 instance resources."
  default = "ami-e5083683" # Amazon Linux AMI
}
variable aws_instance_name {
  type = "string"
  description = "AWS EC2 instance name."
  default = "My Gitlab Runner"
}
variable aws_instance_type {
  type = "string"
  description = "AWS EC2 instance type resources."
  default = "t2.nano"
}
variable aws_security_group_ids {
  type    = "list"
  description = "Security group IDs for AWS resources."
  default = []
}
variable aws_subnet_id {
  type    = "string"
  description = "AWS EC2 Block device volume size in gigabytes."
  default = ""
}
variable aws_volume_size {
  type    = "string"
  description = "AWS EC2 Block device volume size in gigabytes."
  default = "8"
}
variable aws_instance_key_name {
  type    = "string"
  description = "AWS EC2 key name to use."
}


################################################################################################################
## Gitlab Runner Settings
################################################################################################################
variable gitlab_runner_name {
  type = "string"
  description = "Gitlab Runner Instance Name."
  default = "My Gitlab Runner"
}
variable gitlab_runner_url {
  type = "string"
  description = "Gitlab CI coordinator URL."
  default = "https://gitlab.com/ci"
}
variable gitlab_runner_token {
  type = "string"
  description = "Gitlab Runner registration token."
}
variable gitlab_runner_tags {
  type = "string"
  description = "Gitlab Runner tag list (comma separated)."
  default = "specific,docker"
}
variable gitlab_runner_docker_image {
  type = "string"
  description = "Gitlab Runner default docker image."
  default = "node:latest"
}
variable gitlab_concurrent_job {
  type = "string"
  description = "Number of Gitlab CI concurent job to run."
  default = "1"
}
variable gitlab_check_interval {
  type = "string"
  description = "Gitlab CI check interval value."
  default = "0"
}

################################################################################################################
## GitLab Runner Cleanup Tool Setting
################################################################################################################
variable gitlab_rct_low_free_space {
  type = "string"
  description = "Gitlab Runner Cleanup Tool - LOW_FREE_SPACE (When trigger the cache and image removal)"
  default = "1G"
}
variable gitlab_rct_expected_free_space {
  type = "string"
  description = "Gitlab Runner Cleanup Tool - EXPECTED_FREE_SPACE (How much the free space to cleanup)"
  default = "2G"
}
variable gitlab_rct_low_free_files_count {
  type = "string"
  description = "Gitlab Runner Cleanup Tool - LOW_FREE_FILES_COUNT (When the number of free files (i-nodes) runs below this value trigger the cache and image removal)"
  default = "131072"
}
variable gitlab_rct_expected_free_files_count {
  type = "string"
  description = "Gitlab Runner Cleanup Tool - EXPECTED_FREE_FILES_COUNT (How many free files (i-nodes) to cleanup)"
  default = "262144"
}
variable gitlab_rct_default_ttl {
  type = "string"
  description = "Gitlab Runner Cleanup Tool - DEFAULT_TTL (Minimum time to preserve a newly downloaded images or created caches)"
  default = "1m"
}
variable gitlab_rct_use_df {
  description = "Gitlab Runner Cleanup Tool - USE_DF (Use a command line df tool to check disk space)"
  default = "1"
}
