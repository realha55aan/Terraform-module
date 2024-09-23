variable "api_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "api_description" {
  description = "Description of the API Gateway"
  type        = string
  default     = "API Gateway created via Terraform module"
}

variable "api_resource_path" {
  description = "Path for the API Gateway resource"
  type        = string
}

variable "lambda_function_invoke_arn" {
  description = "Lambda function invoke ARN"
  type        = string
}

variable "stage_name" {
  description = "Deployment stage for API Gateway"
  type        = string
  default     = "dev"
}
