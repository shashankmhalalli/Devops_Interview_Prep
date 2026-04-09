output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "security_group_id" {
  description = "ID of the web server security group"
  value       = aws_security_group.web_server.id
}

output "instance_ids" {
  description = "EC2 instance IDs"
  value       = aws_instance.web[*].id
}

output "instance_public_ips" {
  description = "Public IP addresses of web server instances"
  value       = aws_instance.web[*].public_ip
}

output "instance_public_dns" {
  description = "Public DNS names of web server instances"
  value       = aws_instance.web[*].public_dns
}

# ─── Ansible-ready inventory block ────────────────────────────────────────────
# Copy-paste this into ansible/inventory.ini if not using the auto-gen script

output "ansible_inventory_block" {
  description = "Paste this into ansible/inventory.ini"
  value = <<-EOT
[web_servers]
%{for ip in aws_instance.web[*].public_ip~}
${ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/id_rsa
%{endfor~}

[web_servers:vars]
ansible_python_interpreter=/usr/bin/python3
  EOT
}
