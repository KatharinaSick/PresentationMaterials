# Demo 1: Kubernetes

## Create a Kubernetes cluster

- Create a local Kubernetes cluster
```
kind create cluster --config ./01-kubernetes/cluster.yaml
```
- Set your `kubectl` context to `kind-ccontainers-and-beyond-demo`
```
kubectl config set-context kind-containers-and-beyond-demo
```

## Show nodes & control plane components

- Show all 3 nodes
```shell
kubectl get nodes
```
- Take a look at the pods on a worker node
```shell
kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=kind-containers-and-beyond-demo-worker
```
- Take a look at the pods on the control plane node
```shell
kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=kind-containers-and-beyond-demo-control-plane
```

## Deploy something

- Deploy the hello world application
```shell
kubectl apply -f ./01-kubernetes/helloworld.yaml 
```
- Take a look at the created deployment, pod & container