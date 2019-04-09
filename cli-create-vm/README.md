# Create Linux VM

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
