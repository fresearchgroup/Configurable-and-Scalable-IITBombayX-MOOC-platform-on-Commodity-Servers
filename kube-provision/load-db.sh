#!/usr/bin/env bash

# Load the specified database from a file of the same name.
#
# Example:
#   $ load-db edxapp
#
# This will load the edxapp database from a file named exapp.sql.

set -e
set -o pipefail

#if [ -z "$1" ]
#then
#    echo "You must supply a database name!"
#    exit 1
#fi

echo "Loading the edxapp database..."
kubectl exec -i $(kubectl get pods | grep mysql | cut -d ' ' -f 1) mysql edxapp < edxapp.sql
echo "Finished loading the edxapp database!"

echo "Loading the edxapp_csmh database..."
kubectl exec -i $(kubectl get pods | grep mysql | cut -d ' ' -f 1) mysql edxapp_csmh < edxapp_csmh.sql
echo "Finished loading the edxapp_csmh database!"

