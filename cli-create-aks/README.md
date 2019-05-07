# Creating AKS with Azure CLI

Following [this tutorial](https://docs.microsoft.com/en-us/azure/aks/tutorial-kubernetes-prepare-app).

### Quick start with CLI

```bash
$ az group create -g kubeResourceGroup -l eastus
$ az aks create \
    -g kubeResourceGroup \
    --name myAKSCluster \
    --node-count 1 \
    --enable-addons monitoring \
    --generate-ssh-keys
$ az aks get-credentials -g kubeResourceGroup --name myAKSCluster
$ kubectl get nodes
```
