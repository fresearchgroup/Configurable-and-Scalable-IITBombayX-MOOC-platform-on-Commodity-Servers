set -x
set -o pipefail
set -e

echo "Deploying mysql"
kubectl apply -f mysql-deployment.yaml

echo "Deploying mongo"
kubectl apply -f mongo-deployment.yaml

echo "Deploying forum"
kubectl apply -f forum-deployment.yaml

echo "Deploying gradebook"
kubectl apply -f gradebook-deployment.yaml

echo "Deploying credentials"
kubectl apply -f credentials-deployment.yaml

echo "Deploying devpi"
kubectl apply -f devpi-deployment.yaml

echo "Deploying discovery"
kubectl apply -f discovery-deployment.yaml

echo "Deploying ecommerce"
kubectl apply -f ecommerce-deployment.yaml

echo "Deploying edx-notes-api"
kubectl apply -f edx-notes-api-deployment.yaml

echo "Deploying elasticsearch"
kubectl apply -f elasticsearch-deployment.yaml

echo "Deploying memcached"
kubectl apply -f memcached-deployment.yaml

echo "Deploying firefox"
kubectl apply -f firefox-deployment.yaml

echo "Deploying chrome"
kubectl apply -f chrome-deployment.yaml

echo "Deploying lms"
kubectl apply -f lms-deployment.yaml

echo "Deploying studio"
kubectl apply -f studio-deployment.yaml

