# Demo 2: Crossplane

This demo shows how to install Crossplane, the GCP provider and how to manage a cloud resource with Crossplane. It
assumes that you have completed the previous demo ([01-kubernetes](../01-kubernetes)).

## Install Crossplane

- Add the Crossplane Helm chart repo:
```shell
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
```
- Install Crossplane
```shell
helm install crossplane crossplane-stable/crossplane --namespace crossplane-system --create-namespace
```
- Take a look at the API extensions
```shell
kubectl api-resources | grep crossplane
```
- Take a look at the new controller
```shell
kubectl -n crossplane-system get deploy
```

## Install the Crossplane GCP Provider

- Install the GCP provider
```shell
kubectl apply -f ./02-crossplane/provider.yaml
```
- Take a look at the installed providers
```shell
kubectl get providers
```
- Take a look at the new API extensions
```shell
kubectl get crds
```
- Deploy a secret with your credentials
```shell
kubectl create secret generic gcp-secret -n crossplane-system --from-file=creds=./02-crossplane/gcp-sa.json
```
- Deploy the default provider config
```shell
kubectl apply -f ./02-crossplane/provider-config.yaml
```

## Deploy something

- Create a GCP storage bucket
```shell
kubectl apply -f ./02-crossplane/provider-config.yaml
```
- Uncomment the bucket labes and reapply it
```shell
kubectl apply -f ./02-crossplane/provider-config.yaml
```
- Delete the bucket
```shell
kubectl delete bucket i-was-created-with-crossplane-yay
```