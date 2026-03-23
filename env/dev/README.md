# Azure 3-Tier Architecture using Terraform

## Overview
This project demonstrates a modular Terraform setup for deploying a 3-tier architecture on Azure.

## Architecture
Frontend → Backend → Database

## Features
- Modular Terraform design
- Environment separation (dev & prod)
- CI/CD pipeline for validation
- Infrastructure as Code (IaC)

## Modules
- Resource Group
- App Service Plan
- Web App

## CI/CD
- Terraform format check
- Validation
- Init without backend

## Note
Terraform plan/apply requires Azure credentials.
