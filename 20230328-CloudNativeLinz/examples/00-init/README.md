# Initial Setup

## Create a Kubernetes cluster

* Create a local Kubernetes cluster
```
kind create cluster --name crossplane-gitops-samples
```
* Set your `kubectl` context to `kind-crossplane-gitops-samples`
```
kubectl config set-context kind-crossplane-gitops-samples
```

## Install & configure ArgoCD

* [Install ArgoCD](https://argo-cd.readthedocs.io/en/stable/getting_started/#1-install-argo-cd):
```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
* [Access the ArgoCD API server](https://argo-cd.readthedocs.io/en/stable/getting_started/#3-access-the-argo-cd-api-server)
```
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
kubectl port-forward svc/argocd-server -n argocd 8080:443
```
* Get the ArgoCD admin password
```
kubectl -n argocd get secret argocd-initial-admin-secret --template={{.data.password}} | base64 --decode
```
* Login with username 'admin' and the password from the `argocd-initial-admin-secret`
* Apply the init application
```
kubectl -n argocd apply -f examples/00-init/apps.yaml
```

## Configure Crossplane (necessary for examples 2 & 3)

* [Generate GCP service account JSON file](https://cloud.google.com/iam/docs/keys-create-delete)
* Create a secret containing your service account
```
kubectl create secret generic crossplane-gcp-secret -n crossplane-system --from-file=creds=./crossplane-sa.json
```
* Set your google project id in the [google cloud provider config](./crossplane-gcp-provider/provider-config.yaml)