# Step 1: Intro to IaC and Terraform

## What is Infrastructure as Code (IaC)?
IaC, which is short for Infrastructure as Code, is a model which can be used in DevOps to define and deploy infrastructure, such as VMs, load balancers and much more. IaC allows you to generate the same environment every single time it is executed and deployed. IaC is a key component of a DevOps teams due to the problems that could occur if not used. This is because IaC aims to solve to problem of environment drift for releases. Without it, you would need to maintain deployment settings individually in a team, which could lead to deployment issues and inconsistencies. 

## What is Terraform?
Terraform is an IaC tool that enables you to build, change and manage infrastructire using files that are high level readable. To check that Terraform is installed and runs properly in the provided terminal in the current browser, run the following command (which will check the version of Terraform installed):

```bash
terraform -v
```

## Before we continue
Open the editor in the top left corner of the VM
On the left panel you should see a file called `main.tf``
This is the file that represents the infrastructure that we will be creating with Terraform.
Press it to open it.

### Understanding `main.tf``

#### The terraform block
Here we are telling Terraform to use the Docker plugin, with a pinned version

#### `provider "docker" {}`
- Connects Terraform to your local Docker daemon
- It just talks to Docker running on this machine.

#### `docker_network` 
- Creates a private network that containers can join. Containers on the same network can find each other by name. This makes it so that nginx can "call" the backend.

#### `backend container`
- Pulls the httpd (Apache) image and runs it as a container named "backend".
- Joins the network "app_net", so that it is reachable by name on that network.

#### `nginx container`
Runs nginx, exposed on port 8000, joined to the same network (app_net), and configured (via nginx.conf) to forward requests to backend. You can open nginx.conf to see how.