output "lambda_function_invoke_arn" {
  description = "The ARN for invoking the Lambda function"
  value       = aws_lambda_function.this.invoke_arn
}

output "lambda_function_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.this.arn
}
