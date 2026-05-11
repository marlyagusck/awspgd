PGD AWS Terraform Infrastructure

Terraform infrastructure repository untuk deployment AWS environment multi-account di Pegadaian.

Repository ini digunakan untuk:

RedHat IDM
Active Directory
RedHat SSO
Replication Server
Monitoring
Disaster Recovery
Network Infrastructure
Architecture
AWS Organization
│
├── pgd-dev
├── pgd-staging
├── pgd-prd
├── pgd-network
├── pgd-sec-ops
├── pgd-shared-svc
└── pgd-poc-sqs

Terraform menggunakan:

AWS SSO
Assume Role
Remote State S3
Multi Account Architecture
Reusable Terraform Modules
Repository Structure
terraform/
├── environments/
│   ├── pgd-poc-sqs/
│   ├── pgd-dev/
│   ├── pgd-staging/
│   └── pgd-prd/
│
├── modules/
│   ├── ec2/
│   ├── iam/
│   ├── security-group/
│   ├── vpc/
│   ├── cloudwatch/
│   ├── route53/
│   ├── network-firewall/
│   ├── transit-gateway/
│   └── drs/
│
└── shared/