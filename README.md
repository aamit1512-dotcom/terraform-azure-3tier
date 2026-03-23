# Terraform Azure 3-Tier Architecture

## Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform with a modular and multi-environment setup.

## Features
- Modular Terraform structure
- Separate dev and prod environments
- CI/CD pipeline using GitHub Actions
- Automated validation (fmt, init, validate)

## CI/CD Flow
1. Code pushed to GitHub
2. Dev environment validation
3. Prod environment validation

## Note
This project is designed for Azure deployment. Validation is performed without cloud authentication.
