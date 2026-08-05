# Azure Infrastructure using Terraform Modules

This repository contains Terraform code to provision a complete Azure infrastructure using a modular and scalable Infrastructure as Code (IaC) approach. The setup leverages Terraform modules and nested maps for flexible, reusable, and clean resource deployment.

## 🚀 Resources Deployed

* Resource Group (RG)
* Virtual Network (VNet)
* Subnets
* Virtual Machines (VMs)
* Internal Load Balancer (ILB)
* Application Gateway (App Gateway)
* Azure Bastion

## 🧩 Architecture Overview

The infrastructure is organized using a layered design:

* **Networking Layer**: VNet and Subnets for isolation and segmentation
* **Compute Layer**: Virtual Machines for workloads
* **Load Balancing Layer**: Internal Load Balancer for private traffic distribution
* **Application Layer**: Application Gateway for L7 routing and external access
* **Access Layer**: Bastion for secure VM access without public IP

## ⚙️ Key Features

* Modular Terraform code for reusability
* Nested maps for dynamic and environment-based configuration
* Scalable design (dev/test/prod ready)
* Secure architecture with no direct public exposure to VMs
* Clean separation of concerns

## 📦 Use Case

This project can be used as a base template for deploying enterprise-grade Azure infrastructure. It is ideal for learning, POCs, or integrating into CI/CD pipelines for automated cloud provisioning.

## 🛠️ Tools & Technologies

* Terraform
* Microsoft Azure

## 📌 Notes

* Ensure proper Azure credentials before deployment
* Customize variables as per your environment needs

---

This repo is a practical example of building secure, scalable, and production-ready Azure infrastructure using Terraform.

