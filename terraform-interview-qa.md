# Terraform Interview Questions & Answers
> Senior DevOps Engineer — Interview Preparation Guide

---

## Table of Contents

1. [What is Terraform state and why is it important?](#1-what-is-terraform-state-and-why-is-it-important)
2. [What is a remote backend and state locking?](#2-what-is-a-remote-backend-and-state-locking)
3. [Isn't AWS deprecating DynamoDB locking? Shouldn't we focus on native S3 locking?](#3-isnt-aws-deprecating-dynamodb-locking-shouldnt-we-focus-on-native-s3-locking)
4. [Your Terraform apply succeeded, but some resources are not behaving as expected. How do you debug?](#4-your-terraform-apply-succeeded-but-some-resources-are-not-behaving-as-expected-how-do-you-debug)
5. [How do you run Terraform safely in CI/CD pipelines?](#5-how-do-you-run-terraform-safely-in-cicd-pipelines)
6. [Could you write the CI/CD pipeline in .gitlab-ci.yml?](#6-could-you-write-the-cicd-pipeline-in-gitlab-ciyml)
7. [Your Terraform state file is getting too large. How do you manage it?](#7-your-terraform-state-file-is-getting-too-large-how-do-you-manage-it)
8. [A team needs to provision infrastructure in 10 AWS regions simultaneously. How do you structure it?](#8-a-team-needs-to-provision-infrastructure-in-10-aws-regions-simultaneously-how-do-you-structure-it)
9. [You want faster Terraform runs in large projects. What optimizations would you apply?](#9-you-want-faster-terraform-runs-in-large-projects-what-optimizations-would-you-apply)
10. [A production deployment failed halfway. How do you recover?](#10-a-production-deployment-failed-halfway-how-do-you-recover)
11. [How do you manage state drift in Terraform?](#11-how-do-you-manage-state-drift-in-terraform)
12. [What is terraform refresh and is it recommended to use?](#12-what-is-terraform-refresh-and-is-it-recommended-to-use)
13. [What is a provider alias in Terraform?](#13-what-is-a-provider-alias-in-terraform)
14. [What are Terraform meta-arguments?](#14-what-are-terraform-meta-arguments)
15. [What is the difference between count and for_each?](#15-what-is-the-difference-between-count-and-for_each)
16. [How do you make a resource no longer managed by Terraform?](#16-how-do-you-make-a-resource-no-longer-managed-by-terraform)
17. [You want to destroy a particular resource from the Terraform template. How do you do it?](#17-you-want-to-destroy-a-particular-resource-from-the-terraform-template-how-do-you-do-it)
18. [When do you use modules vs workspaces?](#18-when-do-you-use-modules-vs-workspaces)
19. [If you use variables in backend configuration and run terraform init, will it initialize successfully?](#19-if-you-use-variables-in-backend-configuration-and-run-terraform-init-will-it-initialize-successfully)
20. [What is the variable precedence order in Terraform?](#20-what-is-the-variable-precedence-order-in-terraform)
21. [Terraform is taking a very long time to create resources — how do you debug where it is lagging?](#21-terraform-is-taking-a-very-long-time-to-create-resources--how-do-you-debug-where-it-is-lagging)
22. [What are the different Terraform log levels and how can you store them?](#22-what-are-the-different-terraform-log-levels-and-how-can-you-store-them)
23. [How do you ensure your Terraform code works consistently across all environments?](#23-how-do-you-ensure-your-terraform-code-works-consistently-across-all-environments)
24. [What is terraform taint and is it still used today?](#24-what-is-terraform-taint-and-is-it-still-used-today)
25. [If you are given a directory that contains a Terraform state file, how will you know what resources were created?](#25-if-you-are-given-a-directory-that-contains-a-terraform-state-file-how-will-you-know-what-resources-were-created)
26. [Terraform created a resource, but you manually changed it. You want the manual changes to remain. What would you modify?](#26-terraform-created-a-resource-but-you-manually-changed-it-you-want-the-manual-changes-to-remain-what-would-you-modify)
27. [You want a resource to be recreated every time Terraform runs. What would you do?](#27-you-want-a-resource-to-be-recreated-every-time-terraform-runs-what-would-you-do)
28. [What are remote-exec and local-exec provisioners?](#28-what-are-remote-exec-and-local-exec-provisioners)
29. [What is a null_resource and when would you use it?](#29-what-is-a-null_resource-and-when-would-you-use-it)
30. [What is IaC and why Terraform?](#30-what-is-iac-and-why-terraform)
31. [Explain the Terraform state file.](#31-explain-the-terraform-state-file)
32. [How do you manage multiple environments (dev/qa/prod)?](#32-how-do-you-manage-multiple-environments-devqaprod)
33. [What is the use of variables and outputs?](#33-what-is-the-use-of-variables-and-outputs)
34. [How to handle Terraform remote backend?](#34-how-to-handle-terraform-remote-backend)
35. [How do you manage Terraform provider versioning?](#35-how-do-you-manage-terraform-provider-versioning)
36. [How would you provision infrastructure across 10 AWS regions simultaneously?](#36-how-would-you-provision-infrastructure-across-10-aws-regions-simultaneously)
37. [If someone created a resource from the AWS console, how do you sync it with Terraform state?](#37-if-someone-created-a-resource-from-the-aws-console-how-do-you-sync-it-with-terraform-state)
38. [How can you restrict certain team members from modifying critical Terraform resources?](#38-how-can-you-restrict-certain-team-members-from-modifying-critical-terraform-resources)
39. [How do you connect Terraform with AWS?](#39-how-do-you-connect-terraform-with-aws)
40. [How do you manage secrets in Terraform?](#40-how-do-you-manage-secrets-in-terraform)
41. [How do you design a multi-account AWS setup with shared modules and centralised state management?](#41-how-do-you-design-a-multi-account-aws-setup-with-shared-modules-and-centralised-state-management)
42. [What's your strategy to manage provider version drift across multiple repos and teams?](#42-whats-your-strategy-to-manage-provider-version-drift-across-multiple-repos-and-teams)
43. [How do you handle cross-region dependencies in Terraform?](#43-how-do-you-handle-cross-region-dependencies-in-terraform)
44. [How do you implement zero-downtime deployments using Terraform?](#44-how-do-you-implement-zero-downtime-deployments-using-terraform)
45. [How do you manage secret rotation and injection using Vault or AWS Secrets Manager?](#45-how-do-you-manage-secret-rotation-and-injection-using-vault-or-aws-secrets-manager)
46. [What happens when your Terraform state file gets deleted accidentally?](#46-what-happens-when-your-terraform-state-file-gets-deleted-accidentally)
47. [What is the difference between terraform apply and terraform plan?](#47-what-is-the-difference-between-terraform-apply-and-terraform-plan)
48. [How do you roll back infrastructure changes in Terraform?](#48-how-do-you-roll-back-infrastructure-changes-in-terraform)
49. [What are data sources in Terraform and how do you use them?](#49-what-are-data-sources-in-terraform-and-how-do-you-use-them)
50. [How do you import existing AWS resources into Terraform?](#50-how-do-you-import-existing-aws-resources-into-terraform)

---

## State & Backends

### 1. What is Terraform state and why is it important?

Terraform state is a file (`terraform.tfstate`) that acts as Terraform's source of truth — it maps your configuration to real-world infrastructure. Terraform uses it to track what resources it has created, their current attributes, and dependencies between them. It's critical because without it, Terraform cannot determine what exists, what needs to change, or what needs to be destroyed. In production, we always store state remotely — in S3 with DynamoDB locking, or Terraform Cloud — to enable team collaboration and prevent state corruption from concurrent runs.

---

### 2. What is a remote backend and state locking?

A remote backend is where Terraform stores its state file remotely instead of locally — common choices are S3, GCS, or Terraform Cloud. This is essential for team environments where multiple engineers work on the same infrastructure. State locking is a mechanism that prevents concurrent state modifications — when one engineer runs a plan or apply, the state gets locked so no one else can modify it simultaneously. In AWS, we typically pair S3 for state storage with DynamoDB for locking. If a lock isn't released — say due to a crashed apply — we can force-unlock it using `terraform force-unlock <lock-id>`, though that should be done carefully.

---

### 3. Isn't AWS deprecating DynamoDB locking? Shouldn't we focus on native S3 locking?

Yes, great point. AWS recently introduced native state locking support directly in S3 using S3's conditional writes feature, which eliminates the need for a separate DynamoDB table. Terraform added support for this in version 1.10. So the modern approach is to simply enable `use_lockfile = true` in the S3 backend config, and Terraform manages the lock file directly in S3. This simplifies the setup significantly — one less AWS resource to manage, no DynamoDB costs, and no separate table to provision. That said, DynamoDB locking still works and hasn't been fully deprecated yet, so in existing setups you'd see both patterns.

---

### 7. Your Terraform state file is getting too large. How do you manage it?

A large state file is usually a sign that too many resources are being managed in a single state — which is an architectural problem more than a tooling one. The right solution is to break the monolithic state into smaller states using separate state files per logical boundary — for example, networking in one state, compute in another, and data layer in another. These states communicate through `terraform_remote_state` data source or better yet, SSM Parameter Store to avoid tight coupling. We also periodically run `terraform state rm` to remove orphaned resources. State file size itself can also be reduced by refactoring large modules and avoiding storing large rendered templates in state.

---

### 31. Explain the Terraform state file.

The Terraform state file is a JSON file that serves as Terraform's source of truth — it maps your configuration to real-world infrastructure. Every resource Terraform manages is recorded in state with its current attributes, metadata, and dependencies. Key fields include `version` (format version), `terraform_version`, `serial` (increments on every change), `lineage` (unique ID preventing state mixing), `outputs`, and `resources` with full attributes. Without state, Terraform would have no way to know what already exists, what needs updating, or what needs destroying. In production we always store state remotely — typically S3 with native locking — never locally. The state file also stores sensitive values in plaintext, which is why the state bucket must be encrypted, access-controlled, and treated as a secret itself.

---

### 34. How to handle Terraform remote backend?

A remote backend in Terraform is where the state file is stored and managed — instead of sitting on a local machine it lives in a shared, durable, and lockable storage system. The most common setup for AWS is S3 for state storage with native S3 locking in Terraform 1.10+. Configuring a remote backend involves defining a backend block in your Terraform configuration — but critically you can't use variables or expressions there, so dynamic values are handled through partial backend configuration with `backend.hcl` files passed at `terraform init` time. In production you also need to secure the backend — KMS encryption at rest, versioning for rollback capability, strict IAM access restricting to only CI roles, access logging for audit trail, and a bucket policy that denies non-TLS requests and deletion without MFA. The bootstrap problem — needing the state bucket before you can store state — is solved by applying the state bucket infrastructure once with local state, then migrating.

---

### 46. What happens when your Terraform state file gets deleted accidentally?

A deleted state file is one of the more serious Terraform incidents but it's recoverable if you've followed proper state management practices. The immediate response is to stop all Terraform operations and notify the team. If state is in S3 with versioning enabled — which it always should be — you simply remove the delete marker or restore the previous version, then run `terraform plan` to verify. If a manual backup exists, `terraform state push` restores it. Worst case with no backup, you reconstruct state by importing every resource using `terraform import` or the Terraform 1.5+ declarative import blocks with `-generate-config-out`. Prevention is critical: S3 versioning with MFA delete, a bucket policy denying state file deletion, CloudTrail alerts on state bucket modifications, automated state backups before every apply in CI, and S3 object lock in GOVERNANCE mode for WORM protection.

---

## Providers & Versioning

### 13. What is a provider alias in Terraform?

A provider alias in Terraform allows you to define multiple configurations of the same provider within a single Terraform configuration — most commonly used for multi-region deployments or cross-account setups. Without an alias, you can only have one configuration per provider. With aliases, you can define a default provider and additional named configurations, then explicitly pass the right provider to each resource or module. The most common real-world use case is deploying resources across multiple AWS regions in one Terraform run — for example, ACM certificates must be in `us-east-1` for CloudFront, while your main infrastructure lives in another region. Provider aliases are also heavily used in cross-account patterns where you assume different IAM roles per account using separate provider configurations.

---

### 35. How do you manage Terraform provider versioning?

Provider versioning in Terraform is managed through the `required_providers` block combined with the `.terraform.lock.hcl` file. The `required_providers` block specifies version constraints and the lock file records the exact version and checksums that were downloaded. The lock file is critical — it ensures everyone on the team and every CI run uses identical provider versions. I always commit the lock file to version control. For version constraints I use the pessimistic constraint operator `~>` — so `~> 5.31` allows `5.31.x` but not `5.32`. Providers should be updated intentionally — never auto-upgrade — because provider upgrades can introduce breaking changes. When running on mixed platforms like Mac M1 and Linux CI, run `terraform providers lock` with all platform flags to ensure the lock file has hashes for every platform.

---

### 39. How do you connect Terraform with AWS?

Connecting Terraform to AWS means configuring the AWS provider so Terraform can authenticate and make API calls. For local development I use AWS CLI profiles or environment variables. For CI/CD pipelines I always use OIDC-based authentication so no long-lived credentials are stored anywhere — the CI runner exchanges a short-lived OIDC token for temporary AWS credentials via STS `AssumeRoleWithWebIdentity`. For cross-account deployments I use `assume_role` in the provider config so a single runner can deploy to multiple accounts. The key principle is that long-lived access keys should never be used in automated pipelines. The provider also supports `default_tags` which automatically applies specified tags to all resources — a great way to enforce tagging standards without repeating tags in every resource block.

---

### 42. What's your strategy to manage provider version drift across multiple repos and teams?

Provider version drift across multiple repos and teams is one of the most insidious problems in large Terraform organisations. My strategy is three-pronged — standardise, automate, and enforce. Standardise by publishing a central versions module or root Terragrunt config that all teams inherit rather than defining their own version constraints. Automate by running Renovate Bot or Dependabot to open PRs for provider upgrades across all repos simultaneously. Enforce by running CI compliance checks that compare lock file versions against an approved baseline and fail builds that are out of range, or use OPA policies for granular control. The most important practice is always committing the `.terraform.lock.hcl` file — without it, different engineers and CI runs can silently use different provider versions.

---

## CI/CD & Pipelines

### 5. How do you run Terraform safely in CI/CD pipelines?

Running Terraform in CI/CD requires guardrails at every stage. The pipeline follows a plan-then-apply pattern — on every PR, we run `terraform plan` and post the output as a comment for peer review, and `terraform apply` only runs after merge to main. We never store credentials in the pipeline — instead we use OIDC-based authentication so the pipeline assumes an IAM role dynamically without any long-lived secrets. State is always remote with locking enabled. We also run `terraform validate` and `terraform fmt --check` as early gates before plan. For an extra safety layer, we use `terraform plan -out=planfile` and then apply that exact planfile — this ensures what was reviewed is exactly what gets applied. In larger setups, we use Atlantis or Terraform Cloud for more controlled workflows with policy enforcement via Sentinel or OPA.

---

### 6. Could you write the CI/CD pipeline in .gitlab-ci.yml?

Sure — the same principles apply in GitLab CI. We use OIDC for AWS authentication, run validate and plan on merge requests, and apply only on merge to main. The pipeline uses environments and rules to gate the apply stage with manual approval in production. Key GitLab-specific features include: `rules` for controlling when jobs run, `when: manual` for human approval gates, `environment` blocks for deployment tracking, `artifacts` for passing the plan file between stages, `id_tokens` for native OIDC token generation, and YAML anchors for reusing the auth block across jobs. GitLab also has a native `terraform` report artifact type that renders a visual diff directly in the MR UI, which is a cleaner alternative to posting the plan as a comment via the API.

---

## Meta-Arguments & Syntax

### 14. What are Terraform meta-arguments?

Meta-arguments are special arguments in Terraform that are not specific to any one resource type — they're built into Terraform itself and can be applied to any resource or module. There are five of them — `count`, `for_each`, `provider`, `depends_on`, and `lifecycle`. They control how Terraform creates, manages, and destroys resources rather than what the resource configuration is. For example, `count` and `for_each` control how many instances of a resource get created, `depends_on` adds explicit dependency ordering, `provider` assigns a specific provider alias, and `lifecycle` controls create/destroy behaviour like `create_before_destroy` or `prevent_destroy`. These are fundamental to writing production-grade Terraform — you'll use them in almost every non-trivial configuration.

---

### 15. What is the difference between count and for_each?

Both `count` and `for_each` are meta-arguments for creating multiple instances of a resource, but they differ fundamentally in how they track resources in state. `count` uses a numeric index — resources are tracked as `resource[0]`, `resource[1]` etc. `for_each` uses a string key — resources are tracked as `resource["web"]`, `resource["api"]` etc. The critical difference is what happens when you remove an item from the middle — with `count`, removing an item shifts all subsequent indices causing Terraform to destroy and recreate everything after it. With `for_each`, each resource has a stable identity so removing one key only affects that specific resource. In production I default to `for_each` almost always — `count` is really only appropriate for truly identical resources or simple conditionals like `count = 0` or `1`.

---

### 19. If you use variables in backend configuration and run terraform init, will it initialize successfully?

No — Terraform does not allow variables or expressions in backend configuration blocks. This is a hard limitation. The backend block is evaluated before anything else in the Terraform runtime — before variables are loaded, before locals are evaluated, before any expressions are resolved. So if you try to use `var.bucket_name` or `local.region` inside a backend block, Terraform will throw an error at `terraform init` time. The solutions are to use partial backend configuration with `-backend-config` flags at init time, use a `backend.hcl` file passed during init, or use Terragrunt which handles dynamic backend configuration natively by generating a static `backend.tf` before running Terraform.

---

### 20. What is the variable precedence order in Terraform?

Terraform has a well-defined variable precedence order — later sources override earlier ones. From lowest to highest priority: default values in variable blocks, then `terraform.tfvars`, then `terraform.tfvars.json`, then `*.auto.tfvars` files alphabetically, then `*.auto.tfvars.json` alphabetically, then `TF_VAR_*` environment variables, then `-var-file` flags in order, and finally `-var` flags which have the highest priority. In practice the most important things to remember are that `-var` flags always win, environment variables are great for CI secrets, and `auto.tfvars` are convenient for environment-specific defaults that get automatically loaded. Also worth noting — `TF_VAR_` environment variables are case-sensitive and must exactly match the variable name.

---

## Debugging & Performance

### 4. Your Terraform apply succeeded, but some resources are not behaving as expected. How do you debug?

My debugging approach is systematic. First, I'd run `terraform plan` to check if there's any drift between state and actual infrastructure — someone may have made manual changes. Then I'd use `TF_LOG=DEBUG` to get verbose Terraform logs to see exactly what API calls were made. I'd also run `terraform show` and `terraform state show <resource>` to inspect the current state of specific resources. If I suspect the issue is with resource attributes, I'd check the provider documentation to confirm expected behavior. For more complex issues, I'd look at cloud provider logs — CloudTrail in AWS — to verify what actually got created. I'd also validate if there are any implicit dependencies or ordering issues that could cause resources to be created in the wrong order.

---

### 9. You want faster Terraform runs in large projects. What optimizations would you apply?

Slow Terraform runs are usually caused by three things — large state files, excessive API calls during refresh, and unparallelized resource creation. My optimization strategy works at multiple levels. First, I'd break up the monolithic state — smaller state means faster plans. Second, I'd use `-refresh=false` or `-refresh-only` selectively in CI to skip unnecessary state refresh API calls. Third, I'd tune the `-parallelism` flag beyond the default of 10. Fourth, I'd audit the code for unnecessary data sources making redundant API calls on every plan. Finally, I'd look at the module structure — deeply nested modules are slow to evaluate. Provider plugin caching is also a major win in CI — the AWS provider is ~400MB so caching it between runs saves significant time. In large orgs, moving to Terraform Cloud with remote plan execution also helps since it offloads compute from CI runners.

---

### 21. Terraform is taking a very long time to create resources — how do you debug where it is lagging?

My first step is comparing `terraform plan` vs `terraform plan -refresh=false` — if the difference is massive, refresh is the bottleneck not resource creation. Then I enable `TF_LOG=DEBUG` or `TF_LOG_PROVIDER=DEBUG` (Terraform 1.3+) to see exactly what API calls are being made and how long they take. I look at the dependency graph using `terraform graph` to spot unnecessary serialisation from `depends_on` or implicit references. For specific slow resources like RDS or EKS I check timeout configuration and CloudTrail to see what's happening on the AWS side. If Terraform is silently retrying due to AWS API rate limits I'd grep debug logs for `throttl`, `retry`, and `backoff`. Provider plugin caching in CI is also a quick win — the AWS provider is ~400MB and gets downloaded on every run without caching.

---

### 22. What are the different Terraform log levels and how can you store them?

Terraform has five log levels — `ERROR`, `WARN`, `INFO`, `DEBUG`, and `TRACE` — in increasing order of verbosity, set via the `TF_LOG` environment variable. ERROR shows only critical failures, WARN shows unexpected non-fatal issues, INFO shows general operational flow, DEBUG shows API calls and provider interactions (most useful for debugging), and TRACE is everything including raw HTTP requests. From Terraform 1.3+ you can split logs between core engine and provider using `TF_LOG_CORE` and `TF_LOG_PROVIDER` separately, which significantly reduces noise. For storing logs, you set `TF_LOG_PATH` to a file path — but `TF_LOG` must also be set, otherwise `TF_LOG_PATH` does nothing. In CI pipelines we capture logs as artifacts. Worth noting: TRACE logs contain raw HTTP headers including auth tokens, so log storage needs appropriate access controls and retention policies.

---

## State Operations

### 11. How do you manage state drift in Terraform?

State drift happens when real infrastructure diverges from what Terraform's state file records — usually from manual changes in the console, out-of-band scripts, or external automation. My approach is three-pronged — detect it regularly, reconcile it systematically, and prevent it culturally and technically. For detection, I run scheduled `terraform plan` or `apply -refresh-only` jobs in CI that alert when drift is found. For reconciliation, depending on the nature of the drift I either let Terraform overwrite it on next apply, import the change into state, or use `refresh-only` to accept the manual change as the new baseline. Prevention is the real long-term fix — enforcing IaC-only changes through SCPs or IAM policies that deny console modifications on Terraform-managed resources.

---

### 12. What is terraform refresh and is it recommended to use?

Terraform refresh is a command that updates the state file to match real-world infrastructure by querying the cloud provider APIs — without making any changes to actual resources. The standalone `terraform refresh` command is now effectively deprecated in favour of `terraform apply -refresh-only`, which is safer because it shows you what will change in state before committing. As for whether to use it — yes, but selectively. Running a full refresh on every plan in large infrastructures is expensive. In CI, I'd skip refresh on PR pipelines using `-refresh=false` for speed, and run dedicated `refresh-only` jobs on a schedule to detect drift separately.

---

### 16. How do you make a resource no longer managed by Terraform?

To make a resource no longer managed by Terraform without destroying it, you use `terraform state rm`. This removes the resource from the state file but leaves the actual infrastructure completely untouched in the cloud. After running it, Terraform simply forgets the resource exists. A common real-world scenario is when a resource needs to be handed off to another team or managed manually going forward. The important distinction is `terraform state rm` vs `terraform destroy` — destroy deletes the actual resource, state rm just removes it from Terraform's awareness. In Terraform 1.7+ the `removed` block is the modern declarative approach — it's version controlled, goes through PR review, and is self-documenting.

---

### 25. If you are given a directory that contains a Terraform state file, how will you know what resources were created?

There are several ways to inspect what resources exist in a state file. The most common approach is `terraform show` which gives a human readable output of everything in state. For a more structured approach I'd use `terraform state list` to get all resource addresses, then `terraform state show <resource>` to drill into specific ones. For programmatic inspection I'd use `terraform show -json` and query it with `jq`. If I don't have Terraform installed, the state file is just JSON and can be read directly with `cat terraform.tfstate | jq .`. The `serial` field tells you how many times state has been modified, and the `lineage` field is the unique ID that prevents state mixing. To cross-reference with reality I'd also run `terraform plan -refresh-only` — because state tells you what Terraform thinks exists, but only a refresh tells you if reality matches.

---

## Resources & Lifecycle

### 17. You want to destroy a particular resource from the Terraform template. How do you do it?

The most common approach is to simply remove the resource block from the `.tf` file and run `terraform apply` — Terraform will detect the resource is no longer in configuration and destroy it. For urgent cases without touching code, use `terraform destroy -target=<resource_address>`. However, `-target` is a tactical tool not a workflow — it can leave state inconsistent if dependent resources aren't handled. The `prevent_destroy` lifecycle flag acts as a guard rail against accidental destroys. In production I always prefer the code removal approach because it goes through PR review and is self-documenting. In Terraform 1.7+ the `removed` block with `destroy = true` is the cleanest declarative approach.

---

### 24. What is terraform taint and is it still used today?

`terraform taint` was a CLI command used to manually mark a resource for destruction and recreation on the next apply. It was deprecated in Terraform 0.15.2 and the recommended replacement since Terraform 1.0 is the `-replace` flag on plan and apply. So instead of `terraform taint aws_instance.web` followed by `terraform apply`, you now do `terraform apply -replace=aws_instance.web` in a single atomic operation. The `-replace` approach is safer because it shows you the replacement plan before executing it, whereas taint silently marked state and anyone running apply afterwards would trigger the recreation without necessarily knowing why. For systematic replacement triggers that should be expressed in code, the `replace_triggered_by` lifecycle argument in Terraform 1.2+ is the declarative solution.

---

### 26. Terraform created a resource, but you manually changed it. You want the manual changes to remain. What would you modify?

I'd use the `ignore_changes` argument inside the `lifecycle` block. This tells Terraform to ignore specific attributes during plan and apply — so even if the real resource differs from what's in the config or state, Terraform won't touch those attributes. The key is to be surgical — ignore only the specific attributes that are manually managed, not the entire resource. Common legitimate use cases include autoscaling `desired_capacity` managed at runtime, tags injected by external systems like SSM or cost management tools, and minor version upgrades handled outside Terraform. If every attribute needs to be manually managed, that's a signal the resource probably shouldn't be in Terraform at all and should be removed from state with `terraform state rm`.

---

### 27. You want a resource to be recreated every time Terraform runs. What would you do?

I'd use the `terraform_data` resource with a `timestamp()` or `uuid()` trigger — these functions return a different value every time Terraform runs, so every plan sees a new value and triggers replacement. A more controlled alternative is using `replace_triggered_by` in the lifecycle block pointing at a `terraform_data` resource with a changing trigger. Real-world use cases include bootstrap scripts, configuration refreshes, or certificate rotations. That said, forcing recreation on every run is an anti-pattern that breaks Terraform's idempotency — I'd always question whether it's truly necessary and prefer file-hash-based triggers using `filemd5()` that only recreate when something meaningful actually changes.

---

### 28. What are remote-exec and local-exec provisioners?

Provisioners in Terraform are a last resort mechanism to execute scripts either locally or on a remote resource after it's created. `local-exec` runs a command on the machine where Terraform is executing — useful for triggering external scripts, updating DNS, notifying systems, or calling APIs. `remote-exec` runs commands directly on the newly created remote resource over SSH or WinRM — historically used for bootstrapping software. Both are considered escape hatches by HashiCorp — explicitly not recommended for regular use because they break Terraform's idempotency, don't integrate with the state model, and make runs non-deterministic. The modern alternatives are AWS `user_data` for instance bootstrapping, AWS Systems Manager for remote execution, and Ansible for configuration management.

---

### 29. What is a null_resource and when would you use it?

A `null_resource` is a special Terraform resource that doesn't create any actual infrastructure — it's a logical placeholder that exists purely in Terraform state. Its main purpose is to run provisioners, act as a dependency anchor, or trigger actions that don't map to a real cloud resource. It's paired with a `triggers` map — when any trigger value changes, the null_resource is replaced and its provisioners re-run. However, `null_resource` is effectively superseded by `terraform_data` in Terraform 1.4+, which is the modern equivalent built directly into Terraform core without needing the null provider. Common use cases include triggering Ansible after infrastructure is ready, database migrations on schema changes, dependency anchoring between unrelated resources, and destroy-time cleanup operations.

---

## Modules & Workspaces

### 18. When do you use modules vs workspaces?

Modules and workspaces solve completely different problems. Modules are about code reuse and organisation — they let you package a set of resources into a reusable unit that can be called multiple times with different inputs. Workspaces are about state isolation — they let you maintain multiple state files from the same configuration. In practice, I use modules always — every non-trivial Terraform codebase should be modular. I use workspaces sparingly and only for short-lived or ephemeral environments like feature branches or PR previews. For long-lived environment separation like dev, staging, and prod, I prefer separate directories with separate state files over workspaces — workspaces share the same backend config and same code which makes true environment isolation harder to achieve and audit.

---

### 33. What is the use of variables and outputs?

Variables and outputs are Terraform's interface mechanism — variables are inputs and outputs are outputs. Variables allow you to parameterise your configuration so the same code can behave differently across environments without changing the actual resource definitions. They support full type constraints, validation rules, default values, and the `sensitive` flag for secrets. Outputs expose values from your Terraform configuration to the outside world — to the terminal, to other Terraform configurations via remote state, or to CI/CD pipelines. Together they define the public contract of a module — variables are what you pass in, outputs are what you get back. I think of `variables.tf` and `outputs.tf` as the module's public API — they should be designed as carefully as a library interface because changing them is a breaking change for all consumers.

---

## Multi-Environment & Multi-Account

### 32. How do you manage multiple environments (dev/qa/prod)?

The approach I recommend in production is separate state files per environment, with a single set of reusable modules and environment-specific variable files. Each environment gets its own directory with its own backend configuration pointing to an isolated state file — and ideally its own AWS account for true blast radius isolation. I avoid using workspaces for long-lived environments because they share the same backend config and don't support separate AWS accounts cleanly. For keeping environment directories DRY, Terragrunt is excellent. The pipeline enforces sequential promotion — changes flow from dev to QA to prod with automated tests and manual gates at each stage. The most important architectural decision is separate AWS accounts per environment — not just separate state files.

---

### 36. How would you provision infrastructure across 10 AWS regions simultaneously?

For multi-region provisioning, I'd use a single module invoked per region rather than duplicating code. The three main approaches are: provider aliases with `for_each` in a single state (simple but high blast radius), separate directory and state file per region with CI parallel matrix jobs (recommended for production), or Terragrunt `run-all` with native parallelism (cleanest for large setups). GitLab's `parallel: matrix` feature allows spinning up one job per region simultaneously. Terragrunt's `terragrunt run-all apply --terragrunt-parallelism 10` handles this most elegantly. Key considerations: region-specific values like AMIs should use the `aws_ami` data source, global resources like IAM and Route53 go in the primary region first, and separate state per region gives isolated blast radius.

---

### 41. How do you design a multi-account AWS setup with shared modules and centralised state management?

A multi-account AWS setup follows the AWS Organizations model — a management account at the top with separate accounts per environment beneath it. The Terraform architecture mirrors this — shared modules live in a central repository versioned via Git tags, state files are isolated per account in dedicated state buckets within a shared services account, and a single CI runner assumes account-specific roles via `assume_role`. Terragrunt is well-suited for this — the root `terragrunt.hcl` defines the DRY backend config and provider `assume_role`, each account has an `account.hcl` with its account ID, and each module directory has just the inputs. The CI runner authenticates via OIDC to a runner role in the shared services account, then chains `assume_role` calls into each target account. SCPs at the AWS Organizations level enforce IaC-only changes in production accounts.

---

## Secrets Management

### 40. How do you manage secrets in Terraform?

My approach is to never put secrets directly in Terraform code or committed tfvars files. For runtime secrets like database passwords I use AWS Secrets Manager or HashiCorp Vault as the source of truth and reference them dynamically via data sources. For RDS specifically, `manage_master_user_password` is the gold standard — AWS manages the password in Secrets Manager and Terraform never knows the value, so it never appears in state. For provider credentials in CI, I use OIDC so no long-lived credentials exist at all. The hardest problem is that Terraform state stores sensitive values in plaintext even when marked `sensitive = true` — so state must be treated as a secret itself with KMS encryption, strict IAM access, and audit logging. `sensitive = true` only redacts terminal output — it provides no real security for the state file.

---

### 45. How do you manage secret rotation and injection using Vault or AWS Secrets Manager?

For AWS Secrets Manager I use the managed rotation feature with Lambda rotators — Terraform creates the secret resource, the rotation schedule, and the rotation Lambda, but the actual secret value is generated by the rotator and never touches Terraform state. For RDS specifically, `manage_master_user_password` is the gold standard — AWS manages the password entirely. For HashiCorp Vault I use dynamic secrets where Vault generates short-lived credentials on demand — a new database username and password every hour that auto-expires, so there's nothing to rotate because credentials are ephemeral by design. Injection happens at runtime — for ECS I use the `secrets` field in `container_definitions` which references the secret ARN, so ECS fetches the current version at container startup and always gets the rotated credential rather than a value baked in at deploy time.

---

## Advanced Patterns

### 8. A team needs to provision infrastructure in 10 AWS regions simultaneously. How do you structure it?

For multi-region provisioning, I'd avoid duplicating code across regions — instead use a single module invoked per region. Each region gets its own provider alias and its own isolated state file. The module defines all the infrastructure, and region-specific values like AMIs or AZs are passed as variables. For truly simultaneous provisioning, we'd parallelize at the CI/CD pipeline level using GitLab's `parallel: matrix` or Terragrunt's `run-all apply --terragrunt-parallelism 10`. Region-specific values like AMIs should use the `aws_ami` data source rather than hardcoded values, global resources like IAM and Route53 go in the primary region first, and separate state per region ensures a failure in one region doesn't affect others.

---

### 10. A production deployment failed halfway. How do you recover?

Don't panic and don't run another apply immediately. I'd start by running `terraform plan` to see exactly what state Terraform thinks the world is in. Then I'd cross-reference against the cloud console to identify any drift. From there, the recovery path depends on what failed — if it's safe to complete, I'd re-run `terraform apply` since Terraform is idempotent and will only create what's missing. If the partial state is causing issues, I'd use `terraform state` commands to reconcile. If resources were created outside of state, I'd import them. The key principle is — always let Terraform reconcile the state rather than manually deleting resources in the console, which creates more drift. After recovery, run `terraform plan` and verify it shows no changes.

---

### 23. How do you ensure your Terraform code works consistently across all environments?

Ensuring consistency comes down to three things — same code, different inputs, and automated validation. I use a single set of modules called with environment-specific variable files. I pin provider and module versions strictly and always commit the `.terraform.lock.hcl` file. I run the same validation pipeline — fmt, validate, tfsec, and plan — across all environments, and use Terraform's native testing framework for automated module tests. I enforce consistency at the AWS level through SCPs and tagging policies. Nightly drift detection runs `terraform plan -detailed-exitcode` against all environments and alerts on deviation. The goal is that the only difference between environments is the input values — not the code, not the providers, not the modules.

---

### 37. If someone created a resource from the AWS console, how do you sync it with Terraform state?

You use `terraform import`. This reads the existing resource's attributes from AWS and writes them into the Terraform state file — without creating or modifying the actual resource. After importing, you write a matching resource block in your `.tf` files so the configuration matches what's in state. In Terraform 1.5+ the declarative `import` block is more elegant — it goes through PR review and is self-documenting. `terraform plan -generate-config-out=generated.tf` can auto-generate the resource block from the imported state. For bulk imports, Terraformer can import entire AWS account resource types at once. The golden rule: `terraform plan` must show no changes before the import is considered complete.

---

### 38. How can you restrict certain team members from modifying critical Terraform resources?

This is a multi-layered problem — you control it at the AWS level, the Terraform level, and the process level. At the AWS level I use IAM policies and SCPs to restrict what actions specific roles can perform on tagged resources. At the Terraform level I use the `prevent_destroy` lifecycle flag and Sentinel or OPA policies in CI to enforce rules like requiring approval for production changes. At the process level I use CODEOWNERS files and branch protection rules so critical infrastructure changes require senior engineer sign-off. The strongest controls are always at the AWS IAM and SCP level — even if someone runs Terraform locally, they can't make changes their IAM role doesn't permit. SCPs are completely unbypassable — they hold regardless of what tool or workflow is used.

---

### 43. How do you handle cross-region dependencies in Terraform?

Cross-region dependencies require multiple provider configurations using provider aliases — one per region. For S3 replication, you define an aliased provider for the destination region, create the destination bucket with that provider, then configure the source bucket's replication rule to reference the destination bucket ARN — Terraform automatically creates the dependency. For RDS read replicas, the replica resource references the source instance ARN via `replicate_source_db` and uses a different provider alias. Cross-region dependencies spanning separate state files are handled via SSM Parameter Store — the primary state writes the ARN to SSM, and the replica state reads it via a data source. Key gotchas: ACM certificates must be in `us-east-1` for CloudFront, KMS keys are regional so you need replica keys, and VPC peering requires providers for both regions with the accepter explicitly using the destination region's provider alias.

---

### 44. How do you implement zero-downtime deployments using Terraform?

Zero-downtime deployments are achieved through a combination of lifecycle rules, blue-green patterns, and traffic shifting. The most fundamental tool is `create_before_destroy` — this ensures Terraform creates the new resource before destroying the old one. For ASGs I use instance refresh with `min_healthy_percentage = 90` and `auto_rollback = true`. For ECS I use native blue-green deployment with CodeDeploy integration configured with `CodeDeployDefault.ECSCanary10Percent5Minutes`. For Lambda I use weighted aliases for gradual traffic shifting. For databases I use RDS blue-green deployments. The key principle is that traffic only shifts after health checks pass — Terraform orchestrates the infrastructure but the actual traffic shift is controlled by the load balancer. ALB weighted target groups are the most flexible mechanism, allowing percentage-based traffic shifting with instant rollback by changing the weights.

---

### 47. What is the difference between terraform apply and terraform plan?

`terraform plan` is a read-only operation that shows what changes would be made without making them — a dry run diffing configuration against state and reality. `terraform apply` executes those changes against real infrastructure. The key workflow in production pipelines is always `terraform plan -out=tfplan` to save the plan file, then `terraform apply tfplan` to apply exactly that reviewed plan. This prevents the race condition where someone could merge another change between plan and apply. Apply without a saved planfile will re-run the plan internally which could produce different results. `terraform plan -detailed-exitcode` returns exit code `2` when changes are detected — useful for CI scripting to decide whether to proceed to apply.

---

### 48. How do you roll back infrastructure changes in Terraform?

Terraform doesn't have a native rollback command — it's not designed like a transactional system. Rolling back means applying the previous configuration, not undoing the last apply. For wrong configuration changes, I revert the Git commit and run `terraform apply`. For corrupt state, I restore a previous S3 version and push it with `terraform state push`. For specific broken resources, I use `terraform apply -replace`. For traffic-level issues, ALB weight changes or Lambda alias weight adjustments provide instant rollback in seconds. For blue-green setups, switching traffic back to the previous environment is the fastest rollback. The most important insight is that rollback in Terraform is always a forward operation — you're applying a different desired state, not undoing what happened.

---

### 49. What are data sources in Terraform and how do you use them?

Data sources allow you to fetch information from existing infrastructure or external systems that Terraform doesn't manage — they're read-only queries. You use them to reference things that already exist without bringing them under Terraform management, or to look up dynamic values you can't hardcode. Common examples are looking up the latest AMI ID, reading an existing VPC, fetching secrets from Secrets Manager, querying available AZs, or building IAM policy documents using `aws_iam_policy_document`. The syntax uses a `data` block and you reference it with `data.<type>.<name>.<attribute>`. Data sources are evaluated at plan time — if a data source depends on a resource that doesn't exist yet, its value is unknown, which is the most common gotcha that causes `for_each` to fail since it requires values known at plan time.

---

### 50. How do you import existing AWS resources into Terraform?

You use `terraform import` — this reads the existing resource's attributes from AWS and writes them into the Terraform state file without modifying the actual resource. After importing, you write a matching resource block in your `.tf` files. In Terraform 1.5+ the declarative `import` block is more elegant — it goes through PR review and is self-documenting. `terraform plan -generate-config-out=generated.tf` can auto-generate the resource block. For bulk imports, Terraformer can import entire AWS account resource types at once. The golden rule: run `terraform state show` after import to see what attributes were captured, update your config to match, and verify `terraform plan` shows no changes before considering the import complete.

---

## IaC Fundamentals

### 30. What is IaC and why Terraform?

Infrastructure as Code is the practice of managing and provisioning infrastructure through machine-readable configuration files rather than manual processes. Instead of clicking through a console or running ad-hoc scripts, you define your infrastructure declaratively — which means it can be version controlled, peer reviewed, tested, and automated just like application code. As for why Terraform specifically — it's cloud agnostic, meaning the same tool and workflow manages AWS, GCP, Azure, and hundreds of other providers. It uses a declarative HCL syntax that's readable and expressive, has a massive ecosystem of providers and modules, and its state-driven model gives you drift detection and predictable change management. Compared to cloud-native tools like CloudFormation or ARM templates, Terraform lets you manage multi-cloud infrastructure with a single unified workflow.

---

*Document generated from a full Terraform interview prep session covering 50 questions across all major topics.*
