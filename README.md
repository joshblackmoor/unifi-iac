# Terraform Unifi Network Manager

This repository contains Terraform configurations to manage resources in a Unifi network. It automates the creation and management of DNS records and other network configurations using the Unifi Controller API.

## Prerequisites

1. Install [Terraform](https://developer.hashicorp.com/terraform/downloads).
2. An admin account with access to the unifi dashboard (recommended to create a local only admin account)
3. Configure the required variables in a `.auto.tfvars` file (details below).

## Getting Started

### Create the Variables File

Create a `.auto.tfvars` file in the root of the repository to provide the necessary credentials and API information.

Example `.auto.tfvars`:

```
username = "your-unifi-username"
password = "your-unifi-password"
api_url  = "https://unifi-controller-url"
```

Initalise the terraform repo

```
terraform init
```

## Deployment

Plan the changes

```
terraform plan
```

If happy, apply the changes

```
terraform apply -auto-approve
```

## Repository Structure
```
├── dns.tf               # DNS record resources
├── variables.tf         # Variables definition
├── providers.tf         # provider setup
├── .auto.tfvars         # User-specific variable values (gitignored)
└── README.md            # Project documentation
```