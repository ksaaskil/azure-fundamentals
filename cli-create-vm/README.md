# Create Linux VM

Exported templates from [creating a VM with Azure CLI](https://docs.microsoft.com/en-gb/azure/virtual-machines/linux/quick-create-cli).

### Deployment

Create the resource group:

```bash
$ az group create -g myResourceGroup -l eastus
```

Deploy the network and VM:

```bash
$ az deployment create -g myResourceGroup --template-file resource-group-template-with-parameters.json
```

Deploy with `parameters.json` (not included):

```bash
$ az deployment create -g myResourceGroup --template-file resource-group-template.json --parameter-file
```

### Other useful commands

List all resource group names and their states:

```bash
$ az group list --query="[].[name, properties.provisioningState]"
```
