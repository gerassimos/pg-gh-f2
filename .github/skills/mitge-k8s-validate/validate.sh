#!/bin/bash
set -euo pipefail

MANIFEST=$1

echo "Validating manifest: $MANIFEST"
kubectl apply \
  --dry-run=client \
  --validate=true \
  -f "$MANIFEST"