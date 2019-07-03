set -x
set -o pipefail
set -e

echo "Setting up chrome service"
kubectl apply -f chrome-service.yaml

echo "Setting up credentials service"
kubectl apply -f credentials-service.yaml

echo "Setting up devpi service"
kubectl apply -f devpi-service.yaml

echo "Setting up discovery service"
kubectl apply -f discovery-service.yaml

echo "Setting up ecommerce service"
kubectl apply -f chrome-service.yaml

echo "Setting up edx-notes-api service"
kubectl apply -f edx-notes-api-service.yaml

echo "Setting up firefox service"
kubectl apply -f firefox-service.yaml

echo "Setting up forum service"
kubectl apply -f forum-service.yaml

echo "Setting up gradebook service"
kubectl apply -f gradebook-service.yaml

echo "Setting up lms service"
kubectl apply -f lms-service.yaml

echo "Setting up studio service"
kubectl apply -f studio-service.yaml

