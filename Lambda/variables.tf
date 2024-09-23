variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_execution_role_arn" {
  description = "The ARN of the IAM role for Lambda execution"
  type        = string
}

variable "lambda_image_uri" {
  description = "ECR image URI for Lambda"
  type        = string
}

variable "api_gateway_source_arn" {
  description = "API Gateway ARN for Lambda permission"
  type        = string
}
