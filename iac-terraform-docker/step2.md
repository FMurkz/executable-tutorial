# Step 2:

# Set up infrastructure with Terraform

Now we will set up our application with terraform through the use of the provided terminal.



## Running it with Terraform
Now lets execute this setup.

1. Use the following command into the terminal to initialize terraform: 
```bash
terraform init
```
> This downloads the Docker provider and sets up the backend for terraform.
2. To show what terraform *would* create, use the following command:
```bash
terraform plan
```
> By doing this we can see what Terraform would do without accually executing it.
3. Now execute the plan:
```bash
terraform plan
```
> This command applies the plan that the `terraform plan` made. the network, the backend container, and the nginx container.

4. When promted type `yes` in the terminal.

### Verify that it worked
Input the following into the terminal:

```bash
curl localhost:8000
```

> You should now see Apache's "it works" in the terminal. <br>
> Even though we are asking nginx on port 8000, the response should come from the backend
