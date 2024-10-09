#
# Deploys the Node.js microservice to Kubernetes.
#

# set -u # or set -o nounset
# : "$AZURE_RG"
# : "$AZURE_AKS"

# az aks get-credentials --resource-group $AZURE_RG --name $AZURE_AKS --overwrite-existing

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f - 
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f - 
