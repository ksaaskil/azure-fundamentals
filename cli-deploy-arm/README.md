# Deploy Azure Resource Manager template using Azure CLI

Following the [Build Azure Resource Manager templates](https://docs.microsoft.com/en-us/learn/modules/build-azure-vm-templates/) module.

## Steps

Define environment variables:

```bash
$ USERNAME=azureuser
$ PASSWORD=$(openssl rand -base64 32)
$ DNS_LABEL_PREFIX=mydeployment-$RANDOM
$ RG_GROUP=msftlearn-arm-rg
```

Create the resource group:

```bash
$ az group create -g $RG_GROUP
```

Validate the [quick start template](https://github.com/Azure/azure-quickstart-templates/tree/master/101-vm-simple-linux):

```bash
$ az group deployment validate \
  --resource-group $RG_GROUP \
  --template-uri "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-simple-linux/azuredeploy.json" \
  --parameters adminUsername=$USERNAME \
  --parameters authenticationType=password \
  --parameters adminPasswordOrKey=$PASSWORD \
  --parameters dnsLabelPrefix=$DNS_LABEL_PREFIX
```

Run the deployment:

```bash
$ az group deployment create \
  -n MyDeployment \
  -g $RG_GROUP \
  --template-uri "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-simple-linux/azuredeploy.json" \
  --parameters adminUsername=$USERNAME \
  --parameters authenticationType=password \
  --parameters adminPasswordOrKey=$PASSWORD \
  --parameters dnsLabelPrefix=$DNS_LABEL_PREFIX
```

Show deployment status:

```bash
$ az group deployment show \
  --name MyDeployment \
  --resource-group $RG_GROUP
```
