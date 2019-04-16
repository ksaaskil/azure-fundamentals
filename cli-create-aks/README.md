# Creating AKS with Azure CLI

```bash
$ az group create -g myResourceGroup -l eastus
$ az aks create \
    --resource-group myResourceGroup \
    --name myAKSCluster \
    --node-count 1 \
    --enable-addons monitoring \
    --generate-ssh-keys
$ az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
$ kubectl get nodes
```
