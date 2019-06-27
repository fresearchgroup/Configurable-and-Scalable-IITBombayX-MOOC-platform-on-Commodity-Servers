#This is file for claiming persistent volumes.

set -e
set -o pipefail
set -x

echo "Claiming volumes for chrome"
kubectl apply -f chrome-volume0-persistentvolume.yaml
kubectl apply -f chrome-claim0-persistentvolumeclaim.yaml
kubectl apply -f chrome-volume1-persistentvolume.yaml
kubectl apply -f chrome-claim1-persistentvolumeclaim.yaml

echo "Claiming volumes for firefox"
kubectl apply -f firefox-volume0-persistentvolume.yaml
kubectl apply -f firefox-claim0-persistentvolumeclaim.yaml
kubectl apply -f firefox-volume1-persistentvolume.yaml
kubectl apply -f firefox-claim1-persistentvolumeclaim.yaml

echo "Claiming volumes for Mysql"
kubectl apply -f mysql-data-persistentvolume.yaml
kubectl apply -f mysql-data-persistentvolumeclaim.yaml

echo "Claiming volumes for Mongo"
kubectl apply -f mongo-data-persistentvolume.yaml
kubectl apply -f mongo-data-persistentvolumeclaim.yaml

echo "Claiming volumes for ElasticSearch"
kubectl apply -f elasticsearch-data-persistentvolume.yaml
kubectl apply -f elasticsearch-data-persistentvolumeclaim.yaml
kubectl apply -f elasticsearch-data-persistentvolume1.yaml
kubectl apply -f elasticsearch-data-persistentvolumeclaim1.yaml

echo "Claiming volumes for credentials"
kubectl apply -f credentials-volume0-persistentvolume.yaml
kubectl apply -f credentials-claim0-persistentvolumeclaim.yaml
kubectl apply -f credentials-volume2-persistentvolume.yaml
kubectl apply -f credentials-claim2-persistentvolumeclaim.yaml
kubectl apply -f credentials-node-volume-persistentvolume.yaml
kubectl apply -f credentials-node-modules-persistentvolumeclaim.yaml

echo "Claiming volumes for Discovery"
kubectl apply -f discovery-assets-persistentvolume.yaml
kubectl apply -f discovery-assets-persistentvolumeclaim.yaml
kubectl apply -f discovery-volume0-persistentvolume.yaml
kubectl apply -f discovery-claim0-persistentvolumeclaim.yaml
kubectl apply -f discovery-volume2-persistentvolume.yaml
kubectl apply -f discovery-claim2-persistentvolumeclaim.yaml
kubectl apply -f discovery-node-volume-persistentvolume.yaml
kubectl apply -f discovery-node-modules-persistentvolumeclaim.yaml

echo "Claiming volumes for Ecommerce"
kubectl apply -f ecommerce-volume0-persistentvolume.yaml
kubectl apply -f ecommerce-claim0-persistentvolumeclaim.yaml
kubectl apply -f ecommerce-volume2-persistentvolume.yaml
kubectl apply -f ecommerce-claim2-persistentvolumeclaim.yaml
kubectl apply -f ecommerce-node-volume-persistentvolume.yaml
kubectl apply -f ecommerce-node-modules-persistentvolumeclaim.yaml

echo "Claiming volumes for devpi"
kubectl apply -f devpi-data-persistentvolume.yaml
kubectl apply -f devpi-data-persistentvolumeclaim.yaml

echo "Claiming volumes for Edxapp"
kubectl apply -f edxapp-node-volume-persistentvolume.yaml
kubectl apply -f edxapp-node-modules-persistentvolumeclaim.yaml
kubectl apply -f edx-notes-api-volume0-persistentvolume.yaml
kubectl apply -f edx-notes-api-claim0-persistentvolumeclaim.yaml
kubectl apply -f edx-notes-api-volume1-persistentvolume.yaml
kubectl apply -f edx-notes-api-claim1-persistentvolumeclaim.yaml

echo "Claiming volumes for forum"
kubectl apply -f forum-volume0-persistentvolume.yaml
kubectl apply -f forum-claim0-persistentvolumeclaim.yaml

echo "Claiming volumes for Gradebook"
kubectl apply -f gradebook-volume0-persistentvolume.yaml
kubectl apply -f gradebook-claim0-persistentvolumeclaim.yaml
kubectl apply -f gradebook-node-volume-persistentvolume.yaml
kubectl apply -f gradebook-node-modules-persistentvolumeclaim.yaml

echo "Claiming volumes for Edxapp-LMS"
kubectl apply -f edxapp-lms-assets-persistentvolume.yaml
kubectl apply -f edxapp-lms-assets-persistentvolumeclaim.yaml
kubectl apply -f lms-volume0-persistentvolume.yaml
kubectl apply -f lms-claim0-persistentvolumeclaim.yaml
kubectl apply -f lms-volume2-persistentvolume.yaml
kubectl apply -f lms-claim2-persistentvolumeclaim.yaml

echo "Claiming volumes for Edxapp-CMS"
kubectl apply -f edxapp-studio-assets-persistentvolume.yaml
kubectl apply -f edxapp-studio-assets-persistentvolumeclaim.yaml
kubectl apply -f studio-volume0-persistentvolume.yaml
kubectl apply -f studio-claim0-persistentvolumeclaim.yaml
kubectl apply -f studio-volume2-persistentvolume.yaml
kubectl apply -f studio-claim2-persistentvolumeclaim.yaml



