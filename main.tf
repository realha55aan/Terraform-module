# Lambda module
module "example_lambda" {
  source = "./Lambda"

  lambda_function_name      = "example_lambda_function"
  lambda_execution_role_arn = aws_iam_role.lambda_exec_role.arn
  lambda_image_uri          = "196249922469.dkr.ecr.us-east-1.amazonaws.com/my-lambda-repo:latest"
  api_gateway_source_arn    = "arn:aws:execute-api:${var.aws_region}:${var.aws_account_id}:*/*"  # Or specific API Gateway ARN
}

# API Gateway module
module "example_api_gateway" {
  source = "./Api_gateway"

  api_name                = "example-api"
  api_description         = "Example API Gateway"
  api_resource_path       = "example"
  lambda_function_invoke_arn = module.example_lambda.lambda_function_invoke_arn
  stage_name              = "dev"
}
