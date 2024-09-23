output "api_gateway_url" {
  description = "The URL of the deployed API Gateway"
  value       = "${aws_api_gateway_rest_api.this.execution_arn}/*"
}
