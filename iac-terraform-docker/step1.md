# Step 1: Intro to IaC and Terraform

## What is Infrastructure as Code (IaC)?
IaC, which is short for Infrastructure as Code, is a model which can be used in DevOps to define and deploy infrastructure, such as VMs, load balancers and much more. IaC allows you to generate the same environment every single time it is executed and deployed. IaC is a key component of a DevOps teams due to the problems that could occur if not used. This is because IaC aims to solve to problem of environment drift for releases. Without it, you would need to maintain deployment settings individually in a team, which could lead to deployment issues and inconsistencies. 

## What is Terraform?
Terraform is an IaC tool that enables you to build, change and manage infrastructire using files that are high level readable. To check that Terraform is installed and runs properly in the provided terminal in the current browser, run the following command (which will check the version of Terraform installed):

```bash
terraform -v
```