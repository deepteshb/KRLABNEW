output "vpc_id" {
  value = data.aws_vpc.default_vpc.cidr_block
}