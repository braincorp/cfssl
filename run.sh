#!/bin/bash
set -o errexit

CDIR=$(cd `dirname "$0"` && pwd)
cd "$CDIR"

cfssl serve \
  -ca /etc/ca/roc-ca.pem \
  -ca-key /etc/ca/roc-ca-key.pem \
  -db-config db.config \
  -config config.json

#http ${CFH}/api/v1/cfssl/health
# http ${CFH}/api/v1/cfssl/certinfo domain="cloudflare.com"
#http ${CFH}/api/v1/cfssl/info label=email