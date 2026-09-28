# Step 4: Detect and fix the drift

Now that backend is gone, nginx has no way to fulfill requests, but Terraform doesn't know that yet. Let's find out how it reacts.

First, ask Terraform what it thinks the current state looks like, without changing anything:

```bash
# Shows what Terraform WOULD change, without doing it
terraform plan
```

You should see Terraform report that docker_container.backend needs to be created, this is Terraform detecting drift: the current state of the application (with no backend container) no longer matches your declared configuration, i.e a backend container should exist. You should see something like:

```
# docker_container.backend will be created
  + resource "docker_container" "backend" {
    .
    .
    .
  }
```

This is great for us as instead of having to remember what should exist and recreate it manually, Terraform detects the difference for us.

Now let's fix the problem by applying the changes:

```bash
terraform apply
```
> Type yes when prompted


Verify that the app is working again:
```bash
curl localhost:8000
```
Now you should see the Apache "It works!" again. Terraform has therefore recreated the backend container for us, and the app is working like normal.


### One more thing!
Try running `terraform plan` or `apply` again. Notice that it tells you something like: 

```bash 
No changes. Your infrastructure matches the configuration.
```
 
 This is called *idempotency*, running terraform repeatedly with no drift present does nothing. This is why terraform is safe to run over and over as many times as you would like.