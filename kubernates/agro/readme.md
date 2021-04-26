#Quick Start

To see how Argo works, you can install it and run examples of simple workflows and workflows that use artifacts.

Firstly, you'll need a Kubernetes cluster and kubectl set-up

Install Argo Workflows

To get started quickly, you can use the quick start manifest which will install Argo Workflow as well as some commonly used components:

kubectl create ns argo
kubectl apply -n argo -f https://raw.githubusercontent.com/argoproj/argo-workflows/stable/manifests/quick-start-postgres.yaml

Note

On GKE, you may need to grant your account the ability to create new clusterroles

kubectl create clusterrolebinding YOURNAME-cluster-admin-binding --clusterrole=cluster-admin --user=YOUREMAIL@gmail.com

If you are running Argo Workflows locally (e.g. using Minikube or Docker for Desktop), open a port-forward so you can access the namespace:

kubectl -n argo port-forward deployment/argo-server 2746:2746

This will serve the user interface on https://localhost:2746

If you're using running Argo Workflows on a remote cluster (e.g. on EKS or GKE) then follow these instructions.

Next, Download the latest Argo CLI from our releases page.

Finally, submit an example workflow:

argo submit -n argo --watch https://raw.githubusercontent.com/argoproj/argo-workflows/master/examples/hello-world.yaml
argo list -n argo
argo get -n argo @latest
argo logs -n argo @latest
