#
# Deploys the microservices to Kubernetes.
#

set -u # or set -o nounset
: "$VERSION"
: "$ECR_REGISTRY"
: "$ECR_REPOSITORY1"
: "$ECR_REPOSITORY2"

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f - 
