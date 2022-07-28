data "aws_kms_key" "this" {
  key_id = "alias/${lower(local.local_data.aws_region_code)}-kms-${lower(local.local_data.tag_env)}-${lower(local.local_data.aws_team)}"
}