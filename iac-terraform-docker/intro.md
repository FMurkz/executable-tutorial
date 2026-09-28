# Introduction

This tutorial will reflect core DevOps goals such as reproducibility and environment consistency. Manual infrastructure changes are a common cause of outages and inconsistent environments in real systems. IaC addresses this by making changes visible in the code, repeatable, and self correcting.

## What you will do

You will follow along to set up a simple application with two containers connected with Docker. Then by using Terraform, you will create a file that, instead of running docker manually, will describe what the setup should be like, which Terraform then will execute.

The tutorial will then simulate what happens when someone breaks the container by hand. You'll learn how to use Terraform in order to identify and automatically fix the problem.

The tutorial contains of the following steps

1. Look at the Terraform file that declares this setup, and use it to build the system
2. Simulate a real incident 
3. Watch nginx fail as a result
4. Use Terraform to detect the problem and fix it automatically

## App architecture
You will be working with a small application which will be set up as follows:


![Architecture diagram](./architecture.png)

When you send a request to nginx, it forwards it to backend and relays the response back, nginx depends on backend to do its job, but backend doesn't know nginx exists.

You can have a look at `nginx.conf` and `main.tf` too see more in detail

## Learning outcomes
By the end of this tutorial, you will be able to:

1. Explain what Infrastructure as Code (IaC) is
2. Use Terraform to create containers from a config file
3. Detect and fix configuration drift with `terraform plan/apply`
4. Explain when IaC is useful

## Before you start
Please let the terraform installation finish which you can view in the terminal. Once it finishes you can use the `clear`command to clean up the terminal.

#### LETS BEGIN


