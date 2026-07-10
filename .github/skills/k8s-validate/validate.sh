#!/bin/bash
set -euo pipefail

MANIFEST=$1

kubectl apply \
  --dry-run=client \
  --validate=true \
  -f "$MANIFEST"