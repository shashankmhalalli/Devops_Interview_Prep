# ─── Override defaults here ────────────────────────────────────────────────────
# Uncomment and edit values as needed.

aws_region   = "ap-south-1"
project_name = "devops-project5"
environment  = "dev"

# 2 instances spread across 2 AZs
instance_count = 2
instance_type  = "t3.micro"

# ⚠ Restrict this to your actual IP for security:
# ssh_allowed_cidrs = ["<YOUR_IP>/32"]
ssh_allowed_cidrs = ["0.0.0.0/0"]

public_key_path = "~/.ssh/id_rsa.pub"
