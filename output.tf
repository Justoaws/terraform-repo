output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.web_app_alb.dns_name
}