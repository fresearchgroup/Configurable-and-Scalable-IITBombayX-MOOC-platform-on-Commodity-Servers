set -x
set -o pipefail
set -e
kubectl exec -i $(kubectl get pods | grep mysql | cut -d ' ' -f 1) mysql mysql < provision.sql
kubectl exec -i $(kubectl get pods | grep mongo | cut -d ' ' -f 1) mongo < mongo-provision.js
./load-db.sh
