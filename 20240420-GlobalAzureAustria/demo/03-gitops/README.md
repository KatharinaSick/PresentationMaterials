# Demo 3: GitOps

This demo shows how to install ArgoCD and create a minimal GitOps application. It assumes that you have completed the
previous demo ([02-crossplane](../02-crossplane)).

## Install ArgoCD

- [Install ArgoCD](https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd):
```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
- [Access the ArgoCD API server](https://argo-cd.readthedocs.io/en/stable/getting_started/#3-access-the-argo-cd-api-server)
```
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl port-forward svc/argocd-server -n argocd 8080:443
```
- Get the ArgoCD admin password
```
kubectl -n argocd get secret argocd-initial-admin-secret --template={{.data.password}} | base64 --decode
```
- Login with username 'admin' and the password from the `argocd-initial-admin-secret`

## Deploy some workloads

- Apply the init application
```
kubectl -n argocd apply -f ./03-gitops/apps.yaml
```


