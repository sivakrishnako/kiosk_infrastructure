resource "aws_iam_role" "iam_for_lambda" {
  name = "kiosk-rtree-lamda-role-new"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}






resource "aws_lambda_function" "test_lambda" {
  # If the file is not in the current working directory you will need to include a 
  # path.module in the filename.
#   filename      = "lambda_function_payload.zip"
  s3_bucket = "kiosk-frontend-prod-bucket" 
  # s3_key = "AspNetCoreFunction-CodeUri-Or-ImageUri-637890741703279843-637890743207211420 (1).zip"
  s3_key = "RT.Kiosk.Admin.API/AspNetCoreFunction-CodeUri-Or-ImageUri-637922702383375397-637922702710208537.zip"
#   s3_object_version = local.s3_object_version
  function_name = "rt-s3-eventbridge-sqs-dailybatch-process-sqa-kiosk"
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "index.test"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
#   source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "dotnet6"

#   environment {
#     variables = {
#       foo = "bar"
#     }
#   }
}