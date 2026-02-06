# azure-webapp-terraform

# Azure Web App Deployment using Terraform & Azure DevOps

This repository demonstrates an end-to-end DevOps workflow where Azure infrastructure is provisioned using **Terraform**, and application deployment is automated using **Azure DevOps CI/CD pipelines**.

The setup includes an **Azure Linux Web App**, a **staging deployment slot**, and a **slot swap** to production for zero-downtime deployments.

---

## 🚀 Project Overview

- Infrastructure as Code (IaC) using Terraform
- Azure App Service (Linux)
- Deployment Slot (staging → production)
- CI/CD pipeline using Azure DevOps
- Automated application deployment

---

## 🛠 Tools & Technologies

- **Terraform**
- **Azure Resource Manager (AzureRM provider)**
- **Azure DevOps Pipelines**
- **Azure CLI**
- **Node.js**
- **GitHub**

---

## 📁 Project Structure

```

azure-webapp-terraform/
├── main.tf              # Azure resources
├── variables.tf         # Input variables
├── outputs.tf           # Outputs
├── azure-pipelines.yml  # CI/CD pipeline
├── app/
│   ├── index.js         # Sample Node.js app
│   └── package.json
└── README.md

````

---

## 🧱 Infrastructure Components

Terraform provisions the following resources:

- Resource Group
- App Service Plan (Linux)
- Azure Linux Web App
- Deployment Slot (`staging`)

---

## ⚙️ Terraform Files Explained

### `main.tf`
Contains all Azure resource definitions:
- Resource Group
- App Service Plan
- Web App
- Staging slot

### `variables.tf`
Defines input variables such as:
- Resource group name
- Location
- Web app name

### `outputs.tf`
Outputs useful values like:
- Web App default URL

---

## ▶️ How Terraform Is Executed

Terraform commands can be executed in **either** of the following ways:

### Option 1: Locally (for learning & testing)
```bash
terraform init
terraform plan -var="webapp_name=terraformwebapp12345"
terraform apply -var="webapp_name=terraformwebapp12345"
````

### Option 2: CI/CD Pipeline (Recommended for production)

* Terraform runs on an Azure DevOps pipeline agent
* No manual execution required

> In real projects, Terraform is usually executed **inside pipelines**, not manually.

---

## 🔄 CI/CD Pipeline Flow

1. **Terraform Init & Apply**

   * Provisions Azure infrastructure
2. **Application Deployment**

   * Deploys Node.js app to **staging slot**
3. **Slot Swap**

   * Promotes staging to production with zero downtime

---

## 🔁 Deployment Slots (Why Used?)

* Enables testing in staging
* Zero-downtime deployments
* Easy rollback

---

## 🔐 Azure DevOps Prerequisites

Before running the pipeline:

* Create an **Azure Service Connection**
* Ensure Terraform is available on the agent
* Web app name must be globally unique

---

## 📌 Key DevOps Concepts Demonstrated

* Infrastructure as Code (IaC)
* Cloud automation
* CI/CD pipelines
* Deployment slots
* Terraform state management
* Separation of infra and application code

---

## 🎤 Interview Summary (What to Say)

> “This project uses Terraform to provision Azure infrastructure and Azure DevOps pipelines to automate application deployment. A staging deployment slot is used, followed by a slot swap to production to achieve zero-downtime releases.”

---

## ✅ Why Terraform?

* Cloud-agnostic
* State management
* Reusable and modular
* Industry standard IaC tool

---

## 📎 Notes

* Local execution of Terraform is **not compulsory**
* Terraform must be executed **at least once**, either locally or in a pipeline
* `terraform init` and `terraform apply` are mandatory steps somewhere in the workflow

---

## 📬 Author

**Rajesh Kumar Shambudu**
Junior Azure DevOps / Cloud Engineer

---

⭐ If you find this project useful, feel free to star the repository!

```

---

### 🔥 This README is:
- ATS-friendly  
- Interview-ready  
- Fresher + industry aligned  
- Clear and confident  

If you want next:
- **Shorter README (1-page)**
- **Resume bullet points from this project**
- **Explain this project in interview English**
- **Explain same in Telugu + English mix**

Just tell me 👍
```
