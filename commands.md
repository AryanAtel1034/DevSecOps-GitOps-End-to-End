## Argo CD installation using Helm

### Add the official Argo Helm chart repository
```
helm repo add argo https://argoproj.github.io/argo-helm
```
### Update your local Helm repository cache
```
helm repo update
```
### Create a dedicated namespace for Argo CD
```
kubectl create namespace argocd
```
### Install Argo CD into the argocd namespace using the Helm chart
```
helm install argocd argo/argo-cd \
  --namespace argocd
```
### Check the status of Argo CD pods
```
kubectl get pods -n argocd
```
# Port-forward the Argo CD server to localhost:8080
```
kubectl port-forward service/argocd-server -n argocd 8080:443
```
# Get the initial admin password for Argo CD (decoding from base64)
```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```
# List Helm releases in the argocd namespace
```
helm list -n argocd
```
# Uninstall the Argo CD Helm release
```
helm uninstall argocd -n argocd
```
# Delete the argocd namespace and all resources inside it
```
kubectl delete namespace argocd
```