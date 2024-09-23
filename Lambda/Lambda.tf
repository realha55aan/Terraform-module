# Lambda function using ECR image
resource "aws_lambda_function" "this" {
  function_name = var.lambda_function_name
  role          = var.lambda_execution_role_arn
  package_type  = "Image"
  image_uri     = var.lambda_image_uri
}

# Lambda permission for API Gateway to invoke the function
resource "aws_lambda_permission" "allow_api_gateway" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.this.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = var.api_gateway_source_arn
}
