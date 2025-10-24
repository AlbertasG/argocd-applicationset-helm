

# argocd-applicationset-helm

![Version: 0.1.10](https://img.shields.io/badge/Version-0.1.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for managing ArgoCD ApplicationSets

**Homepage:** <https://github.com/albertasg/argocd-applicationset-helm>

## Notes
* This chart can generate ApplicationSet manifests from https://github.com/argoproj/argo-cd

## Source Code

* <https://github.com/albertasg/argocd-applicationset-helm>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| common.annotations | string | `nil` |  |
| common.labels | string | `nil` |  |
| common.syncPolicy.automated.prune | bool | `false` |  |
| common.syncPolicy.automated.selfHeal | bool | `false` |  |
| common.syncPolicy.syncOptions[0] | string | `"CreateNamespace=true"` |  |
| namespace | string | `"argocd"` |  |
| projects[0].clusterResourceWhitelist[0].group | string | `"*"` |  |
| projects[0].clusterResourceWhitelist[0].kind | string | `"*"` |  |
| projects[0].description | string | `"Production environment project"` |  |
| projects[0].destinations[0].namespace | string | `"production"` |  |
| projects[0].destinations[0].server | string | `"https://kubernetes.default.svc"` |  |
| projects[0].name | string | `"production"` |  |
| projects[0].namespaceResourceWhitelist[0].group | string | `"*"` |  |
| projects[0].namespaceResourceWhitelist[0].kind | string | `"*"` |  |
| projects[0].orphanedResources.warn | bool | `true` |  |
| projects[0].sourceRepos[0] | string | `"https://github.com/your-org/production-apps.git"` |  |
| projects[0].sourceRepos[1] | string | `"https://github.com/your-org/your-app.git"` |  |
| projects[0].syncWindows[0].applications[0] | string | `"*"` |  |
| projects[0].syncWindows[0].duration | string | `"12h"` |  |
| projects[0].syncWindows[0].kind | string | `"allow"` |  |
| projects[0].syncWindows[0].namespaces[0] | string | `"production"` |  |
| projects[0].syncWindows[0].schedule | string | `"0 0 * * *"` |  |
| projects[1].clusterResourceWhitelist[0].group | string | `"*"` |  |
| projects[1].clusterResourceWhitelist[0].kind | string | `"*"` |  |
| projects[1].description | string | `"Development environment project"` |  |
| projects[1].destinations[0].namespace | string | `"development"` |  |
| projects[1].destinations[0].server | string | `"https://kubernetes.default.svc"` |  |
| projects[1].name | string | `"development"` |  |
| projects[1].namespaceResourceWhitelist[0].group | string | `"*"` |  |
| projects[1].namespaceResourceWhitelist[0].kind | string | `"*"` |  |
| projects[1].orphanedResources.warn | bool | `true` |  |
| projects[1].sourceRepos[0] | string | `"https://github.com/your-org/dev-apps.git"` |  |
| projects[1].sourceRepos[1] | string | `"https://github.com/your-org/your-app.git"` |  |

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Albertas Grinkevicius | <albertasg@gmail.com> |  |