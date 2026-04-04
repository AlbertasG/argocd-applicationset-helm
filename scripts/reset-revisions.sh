#!/bin/bash
# Reset all ArgoCD Applications to a target revision (default: main)
# Usage: ./reset-revisions.sh
#   REVISION=initial-develop ./reset-revisions.sh
#   REVISION=main NAMESPACE=my-company-123 ./reset-revisions.sh

REV="${REVISION:-main}"
NS="${NAMESPACE:-argocd}"

kubectl get applications -n "$NS" -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.spec.source.targetRevision}{"\n"}{end}' | while read -r app current; do
  if [ "$current" != "$REV" ]; then
    echo "Patching $app: $current -> $REV"
    kubectl patch application "$app" -n "$NS" --type merge -p "{\"spec\":{\"source\":{\"targetRevision\":\"$REV\"}}}"
  else
    echo "OK: $app ($current)"
  fi
done
