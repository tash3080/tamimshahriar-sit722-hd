#
# Deploys the Node.js microservice to Kubernetes.
#

set -u # or set -o nounset
: "$VERSION"
: "$ECR_REGISTRY"
: "$ECR_REPOSITORY1"
: "$ECR_REPOSITORY2"

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f - 
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f - 
