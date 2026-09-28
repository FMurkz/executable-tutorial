# Finish

Well done! 
You have now set up, broken, and fixed a small app using Terraform.

### Reflecting upon the tutorial and Terraform
In this tutorial we have learned how to use Terraform in an effective manner and why its a good practice to use it for infrastructure as code. We have seen that its beneficial for reproducability, quick changes, infrastructure where many work on the same project, and for detecting drift in the system. 

Terraform works differently vs plain Docker Compose or manual shell scripts, since Terraform tracks the actual state of your infrastructure and can detect when it drifts from what's declared. Compose can recreate a stack, but it doesn't compare "what exists" against "what should exist" the way Terraform's plan does. This state-awareness is exactly what makes the drift-detection part of this tutorial possible.

However, sometimes Terraform can be a little bit overkill for small projects, and in those cases it might be better to use a simpler tool like Docker Compose. The documentation for Docker Compose can be found [here](https://docs.docker.com/compose/).

This makes Terraform especially valuable for teams managing shared infrastructure, like a platform or SRE team keeping staging and production consistent. For a solo developer prototyping locally, the overhead likely isn't worth it.

This makes Terraform especially valuable for DevOps teams and developers managing shared infrastructure that needs to stay consistent across environments. For a solo developer prototyping locally, the overhead likely isn't worth it.