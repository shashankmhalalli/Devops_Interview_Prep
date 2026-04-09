# ─── Staging Environment Configuration ──────────────────────────────────────
# Override defaults for staging environment.

aws_region   = "ap-south-1"
project_name = "devops-project5-staging"
environment  = "staging"

# 1 instance for staging
instance_count = 1
instance_type  = "t3.micro"

# ⚠ Restrict this to your actual IP for security:
ssh_allowed_cidrs = ["0.0.0.0/0"]

public_key_path = "~/.ssh/id_rsa.pub"