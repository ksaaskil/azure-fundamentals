# Terraform on Azure

### Initialize terraform

```bash
$ terraform init
```

### Plan deployment

```bash
$ terraform plan -var-file="secret.tfvars"
```

See `secret.tfvars.example` for an example how to populate `secret.tfvars`.

### Apply deployment

```bash
$ terraform apply -var-file="secret.tfvars"
```

### Destroy

```bash
$ terraform destroy
```

### Viewing outputs

After `terraform apply`, run

```bash
$ terraform output [ip]
```

to view outputs.
