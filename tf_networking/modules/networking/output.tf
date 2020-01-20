output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_id" {
  value = [aws_subnet.sub_public.*.id]
}

output "private_subnets_id" {
  value = [aws_subnet.sub_private.*.id]
}

output "default_sg_id" {
  value = aws_security_group.sg_default.id
}

output "security_groups_ids" {
  value = [aws_security_group.sg_default.id]
}
